#Importing and Linking all the HDL source files used in the design
import_files -library work -hdl_source hdl/apb_arbiter.v
import_files -library work -hdl_source hdl/APB_PASS_THROUGH.v
import_files -library work -hdl_source hdl/miv_ihcia.v
import_files -library work -hdl_source hdl/miv_ihcc_mem.v
import_files -library work -hdl_source hdl/miv_ihcc_irqs.v
import_files -library work -hdl_source hdl/miv_ihcc_ctrl.v
import_files -library work -hdl_source hdl/miv_ihcc.v