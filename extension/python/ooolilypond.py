# coding: utf-8

import unohelper
import traceback
from com.sun.star.container import NoSuchElementException
from com.sun.star.task import XJob
from com.sun.star.ui import XContextMenuInterceptor
from com.sun.star.ui.ActionTriggerSeparatorType import LINE as ATST_LINE
from com.sun.star.ui.ContextMenuInterceptorAction import IGNORED, EXECUTE_MODIFIED


class ContextMenuInterceptor(unohelper.Base, XContextMenuInterceptor):
    def init(self):
        pass

    def notifyContextMenuExecute(self, event):
        try:
            # test if selection is a lilypond object
            selection = event.Selection.Selection
            if (selection.supportsService("com.sun.star.drawing.ShapeCollection") and selection.Count == 1):
                selection = selection[0]
            uda = selection.UserDefinedAttributes
            uda.getByName("OOoLilyPondCode")
            # add ooolilypond entry at top of the context menu
            menu = event.ActionTriggerContainer
            separator = menu.createInstance("com.sun.star.ui.ActionTriggerSeparator")
            separator.SeparatorType = ATST_LINE
            item = menu.createInstance("com.sun.star.ui.ActionTrigger")
            url = "vnd.sun.star.script:OOoLilyPond.OOoLilyPond.OOoLilyPond?language=Basic&location=application"
            item.setPropertyValues(("CommandURL", "Text"), (url, "OOoLilyPond"))
            menu.insertByIndex(0, separator)
            menu.insertByIndex(0, item)
            return EXECUTE_MODIFIED
        except (AttributeError, NoSuchElementException):
            return IGNORED
        except Exception:
            traceback.print_exc()
            return IGNORED


class OooLilypond(unohelper.Base, XJob):
    def __init__(self, ctx):
        print("OooLilypond.__init__()")
        self.ctx = ctx
        self.createunoservice = ctx.ServiceManager.createInstance
        desktop = self.createunoservice("com.sun.star.frame.Desktop")
        self.doc = desktop.CurrentComponent

    def execute(self, args):
        try:
            controller = self.doc.CurrentController
            cmi = ContextMenuInterceptor()
            controller.registerContextMenuInterceptor(cmi)
        except Exception:
            traceback.print_exc()


g_ImplementationHelper = unohelper.ImplementationHelper()
g_ImplementationHelper.addImplementation(OooLilypond, "ooo.lilypond.job.impl", ("ooo.lilypond.job.impl",))
