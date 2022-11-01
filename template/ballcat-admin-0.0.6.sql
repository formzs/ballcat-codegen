INSERT INTO `gen_template_group` (`id`, `group_key`, `name`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (29, 'ballcat-admin-060', 'ballcat（0.6.0）', NULL, 0, '2022-01-18 14:10:17', NULL);

INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (778, 'ballcat-admin-060', 'ballcat-ui-react.src', 1, 0, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (779, 'ballcat-admin-060', 'ballcat-ui-vue.src', 1, 0, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (780, 'ballcat-admin-060', 'ballcat.src.main', 1, 0, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (781, 'ballcat-admin-060', '{className}.sql', 2, 0, '## 备注： 变量的使用方法，是mysql语法，基础生成部分是全数据库通用，若数据源非mysql，请只执行基础生成sql\nSTART TRANSACTION;\n\n-- 目录ID\nset @pId = 目录ID;\n-- 菜单ID\nset @menuId = 菜单ID;\n\n## -----------------基础生成部分start-------------\n-- 插入菜单\nINSERT INTO `sys_menu`\n	(`id`, `parent_id`, `title`, `icon`, `permission`, `path`, `target_type`, `uri`, `sort`, `keep_alive`, `hidden`, `type`, `remarks`, `deleted`, `create_time`, `update_time`) \nVALUES \n	(@menuId, @pId, \'${comments}\', NULL, NULL, \'${path}\', 1, NULL, 1, 0, 0, 1, NULL, 0, NOW(), NOW());\n\n\n-- 菜单对应按钮SQL\nINSERT INTO `sys_menu`\n	(`id`, `parent_id`, `title`, `icon`, `permission`, `path`, `target_type`, `uri`, `sort`, `keep_alive`, `hidden`, `type`, `remarks`, `deleted`, `create_time`, `update_time`) \nVALUES \n	(@menuId + 1, @menuId, \'${comments}查询\', NULL, \'${moduleName}:${path}:read\', NULL, 1, NULL, 1, 0, 0, 2, NULL, 0, NOW(), NOW());\n\nINSERT INTO `sys_menu`\n	(`id`, `parent_id`, `title`, `icon`, `permission`, `path`, `target_type`, `uri`, `sort`, `keep_alive`, `hidden`, `type`, `remarks`, `deleted`, `create_time`, `update_time`) \nVALUES \n	(@menuId + 2, @menuId, \'${comments}新增\', NULL, \'${moduleName}:${path}:add\', NULL, 1, NULL, 2, 0, 0, 2, NULL, 0, NOW(), NOW());\n\n\nINSERT INTO `sys_menu`\n	(`id`, `parent_id`, `title`, `icon`, `permission`, `path`, `target_type`, `uri`, `sort`, `keep_alive`, `hidden`, `type`, `remarks`, `deleted`, `create_time`, `update_time`) \nVALUES \n	(@menuId + 3, @menuId, \'${comments}修改\', NULL, \'${moduleName}:${path}:edit\', NULL, 1, NULL, 3, 0, 0, 2, NULL, 0, NOW(), NOW());\n\n\nINSERT INTO `sys_menu`\n	(`id`, `parent_id`, `title`, `icon`, `permission`, `path`, `target_type`, `uri`, `sort`, `keep_alive`, `hidden`, `type`, `remarks`, `deleted`, `create_time`, `update_time`) \nVALUES \n	(@menuId + 4, @menuId, \'${comments}删除\', NULL, \'${moduleName}:${path}:del\', NULL, 1, NULL, 4, 0, 0, 2, NULL, 0, NOW(), NOW());\n## -----------------基础生成部分end-------------\n\n-- 清空变量\nset @menuId = null;\nset @pId = null;\n\nCOMMIT;', 1, '权限sql', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (782, 'ballcat-admin-060', 'pages', 1, 778, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (783, 'ballcat-admin-060', 'services', 1, 778, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (784, 'ballcat-admin-060', 'api', 1, 779, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (785, 'ballcat-admin-060', 'views', 1, 779, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (786, 'ballcat-admin-060', 'java', 1, 780, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (787, 'ballcat-admin-060', 'resources', 1, 780, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (788, 'ballcat-admin-060', '{moduleName}', 1, 782, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (789, 'ballcat-admin-060', '{moduleName}', 1, 783, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (790, 'ballcat-admin-060', '{moduleName}', 1, 784, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (791, 'ballcat-admin-060', '{moduleName}.{path}', 1, 785, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (792, 'ballcat-admin-060', '{packageName}.{moduleName}', 1, 786, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (793, 'ballcat-admin-060', 'mapper', 1, 787, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (794, 'ballcat-admin-060', '{path}.js', 2, 790, 'import request from \'@/utils/request\'\n\nexport function getPage(query) {\n  return request({\n    url: \'/${moduleName}/${path}/page\',\n    method: \'get\',\n    params: query\n  })\n}\n\nexport function addObj(obj) {\n  return request({\n    url: \'/${moduleName}/${path}\',\n    method: \'post\',\n    data: obj\n  })\n}\n\nexport function delObj(id) {\n  return request({\n    url: \'/${moduleName}/${path}/\' + id,\n    method: \'delete\'\n  })\n}\n\nexport function putObj(obj) {\n  return request({\n    url: \'/${moduleName}/${path}\',\n    method: \'put\',\n    data: obj\n  })\n}', 1, 'Axios 访问方法', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (795, 'ballcat-admin-060', '{className}ModalForm.vue', 2, 791, '<template>\n  <a-modal\n    :title=\"title\"\n    :visible=\"visible\"\n    :mask-closable=\"false\"\n    :body-style=\"{paddingBottom: \'8px\'}\"\n    :confirm-loading=\"submitLoading\"\n    @ok=\"handleSubmit\"\n    @cancel=\"handleClose\"\n  >\n    <a-form\n      :form=\"form\"\n      :label-col=\"labelCol\"\n      :wrapper-col=\"wrapperCol\"\n    >\n#foreach ($column in $columns)\n#if($column.columnName == $pk.attrName)\n      <a-form-item v-if=\"isUpdateForm\" style=\"display: none\">\n        <a-input v-decorator=\"[\'${pk.attrName}\']\" />\n      </a-form-item>\n#elseif($column.columnName != \"create_time\" && $column.columnName != \"update_time\")\n      <a-form-item label=\"$column.comments\">\n        <a-input v-decorator=\"[\'$column.attrName\']\" placeholder=\"$column.comments\" />\n      </a-form-item>\n#end\n#end\n    </a-form>\n  </a-modal>\n</template>\n\n<script>\nimport { PopUpFormMixin } from \'@/mixins\'\nimport { addObj, putObj } from \'@/api/${moduleName}/${path}\'\n\nexport default {\n  name: \'${className}ModalForm\',\n  mixins: [PopUpFormMixin],\n  data () {\n    return {\n      reqFunctions: {\n        create: addObj,\n        update: putObj\n      },\n\n      labelCol: {\n        sm: { span: 24 },\n        md: { span: 5 }\n      },\n      wrapperCol: {\n        sm: { span: 24 },\n        md: { span: 19 }\n      },\n\n      // 校验配置\n      decoratorOptions: {}\n    }\n  },\n  methods: {}\n}\n</script>', 1, '新建和修改使用的表单页面', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (796, 'ballcat-admin-060', '{className}Page.vue', 2, 791, '<template>\n  <div class=\"ant-pro-page-container-children-content\">\n  	<pro-table\n        ref=\"table\"\n        toolbar-title=\"${comments}\"\n        :row-key=\"rowKey\"\n        :request=\"tableRequest\"\n        :columns=\"columns\"\n      >\n      	<!-- 查询表单 -->\n      	<template #search-form=\"searchFormState\">\n          <a-row :gutter=\"16\">\n            <a-col :md=\"8\" :sm=\"24\">\n              <a-form-item label=\"ID\">\n                <a-input v-model=\"searchFormState.queryParam.${pk.attrName}\" placeholder=\"\" />\n              </a-form-item>\n            </a-col>\n            <a-col :md=\"8\" :sm=\"24\">\n              <a-form-item :wrapper-col=\"{flex: \'1 1 0\'}\" class=\"search-actions-wrapper\">\n                <a-space>\n                  <a-button type=\"primary\" :loading=\"searchFormState.loading\" @click=\"searchFormState.reloadTable(true)\">\n                    查询\n                  </a-button>\n                  <a-button @click=\"searchFormState.resetSearchForm\">重置</a-button>\n                </a-space>\n              </a-form-item>\n            </a-col>\n          </a-row>\n      	</template>\n    \n    	<!-- 操作按钮区域 -->\n      <template #toolbar-action>\n         <a-button\n            v-has=\"\'${moduleName}:${path}:add\'\"\n            type=\"primary\"\n            icon=\"plus\"\n            @click=\"handleAdd()\"\n          >新建\n          </a-button>\n      </template>\n\n      <!--表格展示相关插槽-->\n      <template #action-slot=\"text, record\">\n            <a v-has=\"\'${moduleName}:${path}:edit\'\" @click=\"handleEdit(record)\">编辑</a>\n            <a-divider type=\"vertical\" />\n            <a-popconfirm \n            	v-has=\"\'${moduleName}:${path}:del\'\"\n                title=\"确认要删除吗？\"\n                @confirm=\"() => handleDel(record)\"\n             >\n              <a href=\"javascript:\" class=\"ballcat-text-danger\">删除</a>\n            </a-popconfirm>\n          </template>\n	</pro-table>\n\n    <!--表单弹窗-->\n    <${path}-modal-form ref=\"formModal\" @reload-page-table=\"reloadPageTable\"/>\n  </div>\n</template>\n\n<script>\nimport ProTable from \'@/components/Table/ProTable.js\'\nimport { doRequest } from \'@/utils/request\'\nimport { getPage, delObj } from \'@/api/${moduleName}/${path}\'\nimport ${className}ModalForm from \'@/views/${moduleName}/${path}/${className}ModalForm\'\n\nexport default {\n  name: \'${className}Page\',\n  components: { ProTable, ${className}ModalForm },\n  data () {\n    return {\n      rowKey: \'id\',\n      tableRequest: getPage,\n\n      columns: [\n#foreach($column in $columns)\n#if($column.columnName != \'create_time\' && $column.columnName != \'update_time\')\n#if($column.columnName == \'id\')\n        {\n          title: \'#\',\n          dataIndex: \'$column.attrName\'\n        },\n#else\n        {\n          title: \'$column.comments\',\n          dataIndex: \'$column.attrName\'\n        },\n#end\n#end\n#end\n        {\n          title: \'创建时间\',\n          dataIndex: \'createTime\',\n          width: \'150px\',\n          sorter: true\n        },\n        {\n          title: \'操作\',\n          key: \'operate\',\n          align: \'center\',\n          width: \'150px\',\n          scopedSlots: { customRender: \'action-slot\' }\n        }\n      ]\n    }\n  },\n  methods: {\n    /**\n     *  刷新表格\n     */\n    reloadPageTable (withFirstPage = true) {\n      this.$refs.table.reloadTable(withFirstPage)\n    },\n    /**\n     * 新建${comments}\n     */\n    handleAdd () {\n      const attributes = { title: \'新建${comments}\' }\n      this.$refs.formModal.add(attributes)\n    },\n    /**\n     * 编辑${comments}\n     * @param record 当前${comments}属性\n     */\n    handleEdit (record) {\n      const attributes = { title: \'编辑${comments}\' }\n      this.$refs.formModal.update(record, attributes)\n    },\n    /**\n     * 删除${comments}\n     * @param record 当前${comments}属性\n     */\n    handleDel (record) {\n      doRequest(delObj(record[this.rowKey]), {\n        onSuccess: () => {\n          this.reloadPageTable(false)\n        }\n      })\n    }\n  }\n}\n</script>', 1, '查询页面', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (797, 'ballcat-admin-060', 'controller', 1, 792, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (798, 'ballcat-admin-060', 'converter', 1, 792, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (799, 'ballcat-admin-060', 'mapper', 1, 792, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (800, 'ballcat-admin-060', 'model', 1, 792, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (801, 'ballcat-admin-060', 'service', 1, 792, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (802, 'ballcat-admin-060', '{moduleName}', 1, 793, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (803, 'ballcat-admin-060', '{className}Controller.java', 2, 797, 'package ${packageName}.${moduleName}.controller;\n\nimport ${packageName}.${moduleName}.model.entity.${className};\nimport ${packageName}.${moduleName}.model.qo.${className}QO;\nimport ${packageName}.${moduleName}.model.vo.${className}PageVO;\nimport ${packageName}.${moduleName}.service.${className}Service;\nimport com.hccake.ballcat.common.log.operation.annotation.CreateOperationLogging;\nimport com.hccake.ballcat.common.log.operation.annotation.DeleteOperationLogging;\nimport com.hccake.ballcat.common.log.operation.annotation.UpdateOperationLogging;\nimport com.hccake.ballcat.common.model.domain.PageParam;\nimport com.hccake.ballcat.common.model.domain.PageResult;\nimport com.hccake.ballcat.common.model.result.BaseResultCode;\nimport com.hccake.ballcat.common.model.result.R;\nimport io.swagger.v3.oas.annotations.Operation;\nimport io.swagger.v3.oas.annotations.tags.Tag;\nimport lombok.RequiredArgsConstructor;\nimport org.springframework.security.access.prepost.PreAuthorize;\nimport org.springframework.web.bind.annotation.DeleteMapping;\nimport org.springframework.web.bind.annotation.GetMapping;\nimport org.springframework.web.bind.annotation.PathVariable;\nimport org.springframework.web.bind.annotation.PostMapping;\nimport org.springframework.web.bind.annotation.PutMapping;\nimport org.springframework.web.bind.annotation.RequestBody;\nimport org.springframework.web.bind.annotation.RequestMapping;\nimport org.springframework.web.bind.annotation.RestController;\n\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\n@RestController\n@RequiredArgsConstructor\n@RequestMapping(\"/${moduleName}/${path}\" )\n@Tag(name = \"${comments}管理\")\npublic class ${className}Controller {\n\n    private final  ${className}Service ${classname}Service;\n\n    /**\n     * 分页查询\n     * @param pageParam 分页参数\n     * @param ${classname}QO ${comments}查询对象\n     * @return R 通用返回体\n     */\n    @Operation(summary = \"分页查询\")\n    @GetMapping(\"/page\" )\n    @PreAuthorize(\"@per.hasPermission(\'${moduleName}:${path}:read\')\" )\n    public R<PageResult<${className}PageVO>> get${className}Page(\n            PageParam pageParam, ${className}QO ${classname}QO) {\n        return R.ok(${classname}Service.queryPage(pageParam, ${classname}QO));\n    }\n\n    /**\n     * 新增${comments}\n     * @param ${classname} ${comments}\n     * @return R 通用返回体\n     */\n    @Operation(summary = \"新增${comments}\")\n    @CreateOperationLogging(msg = \"新增${comments}\" )\n    @PostMapping\n    @PreAuthorize(\"@per.hasPermission(\'${moduleName}:${path}:add\')\" )\n    public R<Void> save(@RequestBody ${className} ${classname}) {\n        return ${classname}Service.save(${classname}) ?\n                R.ok() : R.failed(BaseResultCode.UPDATE_DATABASE_ERROR, \"新增${comments}失败\");\n    }\n\n    /**\n     * 修改${comments}\n     * @param ${classname} ${comments}\n     * @return R 通用返回体\n     */\n    @Operation(summary = \"修改${comments}\")\n    @UpdateOperationLogging(msg = \"修改${comments}\" )\n    @PutMapping\n    @PreAuthorize(\"@per.hasPermission(\'${moduleName}:${path}:edit\')\" )\n    public R<Void> updateById(@RequestBody ${className} ${classname}) {\n        return ${classname}Service.updateById(${classname}) ?\n                R.ok() : R.failed(BaseResultCode.UPDATE_DATABASE_ERROR, \"修改${comments}失败\");\n    }\n\n    /**\n     * 通过id删除${comments}\n     * @param ${pk.attrName} id\n     * @return R 通用返回体\n     */\n    @Operation(summary = \"通过id删除${comments}\")\n    @DeleteOperationLogging(msg = \"通过id删除${comments}\" )\n    @DeleteMapping(\"/{${pk.attrName}}\" )\n    @PreAuthorize(\"@per.hasPermission(\'${moduleName}:${path}:del\')\" )\n    public R<Void> removeById(@PathVariable(\"${pk.attrName}\") ${pk.attrType} ${pk.attrName}) {\n        return ${classname}Service.removeById(${pk.attrName}) ?\n                R.ok() : R.failed(BaseResultCode.UPDATE_DATABASE_ERROR, \"通过id删除${comments}失败\");\n    }\n\n}', 1, '控制层', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (804, 'ballcat-admin-060', '{className}Converter.java', 2, 798, 'package ${packageName}.${moduleName}.converter;\n\nimport ${packageName}.${moduleName}.model.entity.${className};\nimport ${packageName}.${moduleName}.model.vo.${className}PageVO;\nimport org.mapstruct.Mapper;\nimport org.mapstruct.factory.Mappers;\n\n/**\n * ${comments}模型转换器\n *\n * @author ${author} ${currentTime}\n */\n@Mapper\npublic interface ${className}Converter {\n\n	${className}Converter INSTANCE = Mappers.getMapper(${className}Converter.class);\n\n	/**\n	 * PO 转 PageVO\n	 * @param ${classname} ${comments}\n	 * @return ${className}PageVO ${comments}PageVO\n	 */\n	${className}PageVO poToPageVo(${className} ${classname});\n\n}\n', 1, '类型转换器', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (805, 'ballcat-admin-060', '{className}Mapper.java', 2, 799, 'package ${packageName}.${moduleName}.mapper;\n\nimport com.baomidou.mybatisplus.core.metadata.IPage;\nimport ${packageName}.${moduleName}.converter.${className}Converter;\nimport ${packageName}.${moduleName}.model.entity.${className};\nimport ${packageName}.${moduleName}.model.qo.${className}QO;\nimport ${packageName}.${moduleName}.model.vo.${className}PageVO;\nimport com.hccake.ballcat.common.model.domain.PageParam;\nimport com.hccake.ballcat.common.model.domain.PageResult;\nimport com.hccake.extend.mybatis.plus.conditions.query.LambdaQueryWrapperX;\nimport com.hccake.extend.mybatis.plus.mapper.ExtendMapper;\nimport com.hccake.extend.mybatis.plus.toolkit.WrappersX;\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\npublic interface ${className}Mapper extends ExtendMapper<${className}> {\n\n    /**\n    * 分页查询\n    * @param pageParam 分页参数\n    * @param qo 查询参数\n    * @return PageResult<${className}PageVO> VO分页数据\n    */\n   default PageResult<${className}PageVO> queryPage(PageParam pageParam, ${className}QO qo){\n		IPage<${className}> page = this.prodPage(pageParam);\n		LambdaQueryWrapperX<${className}> wrapper = WrappersX.lambdaQueryX(${className}.class);\n		this.selectPage(page, wrapper);\n		IPage<${className}PageVO> voPage = page.convert(${className}Converter.INSTANCE::poToPageVo);\n		return new PageResult<>(voPage.getRecords(), voPage.getTotal());\n   }\n}', 1, '数据访问层', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (806, 'ballcat-admin-060', 'entity', 1, 800, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (807, 'ballcat-admin-060', 'qo', 1, 800, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (808, 'ballcat-admin-060', 'vo', 1, 800, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (809, 'ballcat-admin-060', 'impl', 1, 801, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (810, 'ballcat-admin-060', '{className}Service.java', 2, 801, 'package ${packageName}.${moduleName}.service;\n\nimport ${packageName}.${moduleName}.model.entity.${className};\nimport ${packageName}.${moduleName}.model.vo.${className}PageVO;\nimport ${packageName}.${moduleName}.model.qo.${className}QO;\nimport com.hccake.ballcat.common.model.domain.PageParam;\nimport com.hccake.ballcat.common.model.domain.PageResult;\nimport com.hccake.extend.mybatis.plus.service.ExtendService;\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\npublic interface ${className}Service extends ExtendService<${className}> {\n\n    /**\n    *  根据QueryObeject查询分页数据\n    * @param pageParam 分页参数\n    * @param qo 查询参数对象\n    * @return PageResult&lt;${className}PageVO&gt; 分页数据\n    */\n    PageResult<${className}PageVO> queryPage(PageParam pageParam, ${className}QO qo);\n\n}', 1, '业务逻辑层', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (811, 'ballcat-admin-060', '{className}Mapper.xml', 2, 802, '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE mapper PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\" \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\">\n<mapper namespace=\"${packageName}.${moduleName}.mapper.${className}Mapper\">\n\n	<resultMap id=\"${classname}Map\" type=\"${packageName}.${moduleName}.model.entity.${className}\">\n#foreach($column in $columns)\n  #if($column.attrName==$pk.attrName)\n		<id property=\"${pk.attrName}\" column=\"${pk.columnName}\"/>\n  #else\n		<result property=\"${column.attrName}\" column=\"${column.columnName}\"/>\n  #end\n#end\n    </resultMap>\n\n	<sql id=\"Base_Column_List\">\n#foreach($column in $columns)\n		${column.columnName}#if($foreach.hasNext),#end\n        \n#end\n	</sql>\n\n	<sql id=\"Base_Alias_Column_List\">\n#foreach($column in $columns)\n		${tableAlias}.${column.columnName}#if( $foreach.hasNext ),#end\n        \n#end\n	</sql>\n</mapper>', 1, 'Mybatis Mapper Xml', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (812, 'ballcat-admin-060', '{className}.java', 2, 806, 'package ${packageName}.${moduleName}.model.entity;\n\nimport com.baomidou.mybatisplus.annotation.FieldFill;\nimport com.baomidou.mybatisplus.annotation.TableField;\nimport com.baomidou.mybatisplus.annotation.TableId;\nimport com.baomidou.mybatisplus.annotation.TableName;\nimport io.swagger.v3.oas.annotations.media.Schema;\n\nimport lombok.Data;\nimport java.time.LocalDateTime;\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\n@Data\n@TableName(\"${tableName}\")\n@Schema(title = \"${comments}\")\npublic class ${className} {\n\n	private static final long serialVersionUID = 1L;\n\n#foreach ($column in $columns)\n	/**\n	 * $column.comments\n	 */\n#if($column.columnName == $pk.columnName)\n	@TableId\n#elseif($column.columnName == \'create_time\')\n	@TableField(fill = FieldFill.INSERT)\n#elseif($column.columnName == \'update_time\')\n	@TableField(fill = FieldFill.INSERT_UPDATE)\n#end\n	@Schema(title=\"$column.comments\")\n	private $column.attrType $column.attrName;\n    \n#end\n\n}\n', 1, '数据实体', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (813, 'ballcat-admin-060', '{className}QO.java', 2, 807, 'package ${packageName}.${moduleName}.model.qo;\n\nimport io.swagger.v3.oas.annotations.Parameter;\nimport io.swagger.v3.oas.annotations.media.Schema;\n\nimport lombok.Data;\nimport org.springdoc.api.annotations.ParameterObject;\n\n/**\n * ${comments} 查询对象\n *\n * @author ${author} ${currentTime}\n */\n@Data\n@Schema(title = \"${comments}查询对象\")\n@ParameterObject\npublic class ${className}QO  {\n	private static final long serialVersionUID = 1L;\n\n#foreach ($column in $columns)\n	/**\n	 * $column.comments\n	 */\n#if($column.columnName == $pk.columnName)\n	@Parameter(description=\"$column.comments\")\n	private $column.attrType $column.attrName;\n#break\n#end\n#end\n\n}', 1, '默认数据查询对象', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (814, 'ballcat-admin-060', '{className}PageVO.java', 2, 808, 'package ${packageName}.${moduleName}.model.vo;\n\nimport io.swagger.v3.oas.annotations.media.Schema;\n\nimport lombok.Data;\n#if(${hasBigDecimal})\nimport java.math.BigDecimal;\n#end\nimport java.time.LocalDateTime;\n\n/**\n * ${comments}分页视图对象\n *\n * @author ${author} ${currentTime}\n */\n@Data\n@Schema(title = \"${comments}分页视图对象\")\npublic class ${className}PageVO {\n    private static final long serialVersionUID = 1L;\n\n#foreach ($column in $columns)\n    /**\n     * $column.comments\n     */\n    @Schema(title=\"$column.comments\")\n    private $column.attrType $column.attrName;\n    \n#end\n\n}', 1, '默认数据视图对象', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (815, 'ballcat-admin-060', '{className}ServiceImpl.java', 2, 809, 'package ${packageName}.${moduleName}.service.impl;\n\nimport ${packageName}.${moduleName}.model.entity.${className};\nimport ${packageName}.${moduleName}.model.vo.${className}PageVO;\nimport ${packageName}.${moduleName}.model.qo.${className}QO;\nimport ${packageName}.${moduleName}.mapper.${className}Mapper;\nimport ${packageName}.${moduleName}.service.${className}Service;\nimport com.hccake.ballcat.common.model.domain.PageParam;\nimport com.hccake.ballcat.common.model.domain.PageResult;\nimport com.hccake.extend.mybatis.plus.service.impl.ExtendServiceImpl;\nimport org.springframework.stereotype.Service;\n\n/**\n * ${comments}\n *\n * @author ${author} ${currentTime}\n */\n@Service\npublic class ${className}ServiceImpl extends ExtendServiceImpl<${className}Mapper, ${className}> implements ${className}Service {\n\n    /**\n    *  根据QueryObeject查询分页数据\n    * @param pageParam 分页参数\n    * @param qo 查询参数对象\n    * @return PageResult<${className}PageVO> 分页数据\n    */\n    @Override\n    public PageResult<${className}PageVO> queryPage(PageParam pageParam, ${className}QO qo) {\n        return baseMapper.queryPage(pageParam, qo);\n    }\n\n}\n', 1, '业务逻辑层实现类', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (816, 'ballcat-admin-060', '{path}', 1, 788, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (817, 'ballcat-admin-060', '{path}', 1, 789, NULL, NULL, NULL, 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (818, 'ballcat-admin-060', 'index.ts', 2, 817, 'import type { PageResult, QueryParam, R } from \'@/typings\';\nimport { request } from \'umi\';\nimport type { ${className}, ${className}Qo, ${className}Vo } from \'./typings\';\n\nexport * from \'./typings\';\n\nexport async function query(body: QueryParam<${className}Qo>) {\n  return request<R<PageResult<${className}Vo>>>(\'${moduleName}/${path}/page\', {\n    method: \'GET\',\n    params: body,\n  });\n}\n\nexport async function create(body: ${className}) {\n  return request<R<any>>(\'${moduleName}/${path}\', {\n    method: \'POST\',\n    data: body,\n  });\n}\n\nexport async function edit(body: ${className}) {\n  return request<R<any>>(\'${moduleName}/${path}\', {\n    method: \'PUT\',\n    data: body,\n  });\n}\n#set($delPk = \"body.\")\nexport async function del(body: ${className}Vo) {\n  return request<R<any>>(`${moduleName}/${path}/${${delPk}${pk.attrName}}`, {\n    method: \'DELETE\',\n  });\n}', 1, 'react用于发起请求', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (819, 'ballcat-admin-060', 'typings.ts', 2, 817, 'export type ${className}Qo = {\n#foreach ($column in $columns)\n  // $column.comments\n  $column.attrName: $column.tsAttrType;\n#end\n}\n\nexport type ${className}Vo = {\n#foreach ($column in $columns)\n  // $column.comments\n  $column.attrName: $column.tsAttrType;\n#end\n}\n\nexport type ${className} = {\n#foreach ($column in $columns)\n  // $column.comments\n  $column.attrName: $column.tsAttrType;\n#end\n}', 1, 'react实体类', 0, '2022-01-18 14:10:17', NULL);
INSERT INTO `gen_template_entry` (`id`, `group_key`, `filename`, `type`, `parent_id`, `content`, `engine_type`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (820, 'ballcat-admin-060', 'index.tsx', 2, 816, 'import Page from \'@/components/Page\';\nimport type { ProColumns } from \'@ant-design/pro-table\';\nimport { ProFormText } from \'@ant-design/pro-form\';\nimport * as ${moduleName}${className} from \'@/services/${moduleName}/${path}\';\nimport type { ${className}, ${className}Qo, ${className}Vo } from \'@/services/${moduleName}/${path}\';\n\nconst dataColumns: ProColumns<${className}Vo>[] = [\n#foreach ($column in $columns)\n  {\n    title: \'$column.comments\',\n    dataIndex: \'$column.attrName\',\n#if($column.columnName == \"create_time\" || $column.columnName == \"update_time\")\n    width: \'150px\',\n    sorter: true,\n#end\n  },\n#end\n];\n\nexport default () => {\n  return (\n    <Page.Modal<${className}Vo, ${className}Qo, ${className}>\n      {...${moduleName}${className}}\n      rowKey=\"${pk.attrName}\"\n      title=\"${comments}\"\n      columns={dataColumns}\n      toolBarActions={[{ type: \'create\', permission: \'${moduleName}:${path}:edit\' }]}\n      operateBar={[{ type: \'del\', permission: \'${moduleName}:${path}:del\' }]}\n    >\n#foreach ($column in $columns)\n#if($column.columnName == $pk.attrName)\n      <ProFormText hidden name=\"${pk.attrName}\" />\n#elseif($column.columnName != \"create_time\" && $column.columnName != \"update_time\")\n      <ProFormText label=\"$column.comments\" name=\"${column.attrName}\" placeholder=\"请输入${column.comments}\" />\n#end\n#end\n    </Page.Modal>\n  );\n};', 1, 'react页面', 0, '2022-01-18 14:10:17', NULL);


INSERT INTO `gen_template_property` (`id`, `group_key`, `title`, `prop_key`, `default_value`, `required`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (62, 'ballcat-admin-060', '作者', 'author', 'ballcat', 1, NULL, 0, '2022-01-18 14:10:19', NULL);
INSERT INTO `gen_template_property` (`id`, `group_key`, `title`, `prop_key`, `default_value`, `required`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (63, 'ballcat-admin-060', '模块名', 'moduleName', NULL, 1, '纯字母', 0, '2022-01-18 14:10:19', NULL);
INSERT INTO `gen_template_property` (`id`, `group_key`, `title`, `prop_key`, `default_value`, `required`, `remarks`, `deleted`, `create_time`, `update_time`) VALUES (64, 'ballcat-admin-060', '包名', 'packageName', 'com.hccake.ballcat', 1, NULL, 0, '2022-01-18 14:10:19', NULL);
