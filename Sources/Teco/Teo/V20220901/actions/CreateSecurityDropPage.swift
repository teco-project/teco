//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Teo {
    /// CreateSecurityDropPage请求参数结构体
    public struct CreateSecurityDropPageRequest: TCRequestModel {
        /// 站点Id。当使用ZoneId和Entity时可不填写TemplateId，否则必须填写TemplateId。
        public let zoneId: String

        /// 子域名/应用名。当使用ZoneId和Entity时可不填写TemplateId，否则必须填写TemplateId。
        public let entity: String

        /// 自定义页面的文件名。
        public let name: String

        /// 自定义页面的内容，本字段的内容需要将数据经过urlencode后传入。
        public let content: String

        /// 上传的类型，取值有：
        /// <li> file：将页面文件内容进行urlencode编码，填入Content字段；</li>
        /// <li> url：将待上传的url地址进行urlencode编码，填入Content字段，即时下载，内容不会自动更新。</li>
        public let type: String

        /// 页面所属的模块，取值有：
        /// <li> waf ：托管规则模块；</li>
        /// <li> rate：自定义规则模块。</li>
        public let module: String

        /// 模板Id。当使用模板Id时可不填ZoneId和Entity，否则必须填写ZoneId和Entity。
        public let templateId: String?

        public init(zoneId: String, entity: String, name: String, content: String, type: String, module: String, templateId: String? = nil) {
            self.zoneId = zoneId
            self.entity = entity
            self.name = name
            self.content = content
            self.type = type
            self.module = module
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case entity = "Entity"
            case name = "Name"
            case content = "Content"
            case type = "Type"
            case module = "Module"
            case templateId = "TemplateId"
        }
    }

    /// CreateSecurityDropPage返回参数结构体
    public struct CreateSecurityDropPageResponse: TCResponseModel {
        /// 自定义页面上传后的唯一id。
        public let pageId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pageId = "PageId"
            case requestId = "RequestId"
        }
    }

    /// 创建自定义拦截页面
    ///
    /// 创建自定义拦截页面。
    @inlinable
    public func createSecurityDropPage(_ input: CreateSecurityDropPageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSecurityDropPageResponse > {
        self.client.execute(action: "CreateSecurityDropPage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建自定义拦截页面
    ///
    /// 创建自定义拦截页面。
    @inlinable
    public func createSecurityDropPage(_ input: CreateSecurityDropPageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityDropPageResponse {
        try await self.client.execute(action: "CreateSecurityDropPage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建自定义拦截页面
    ///
    /// 创建自定义拦截页面。
    @inlinable
    public func createSecurityDropPage(zoneId: String, entity: String, name: String, content: String, type: String, module: String, templateId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSecurityDropPageResponse > {
        self.createSecurityDropPage(CreateSecurityDropPageRequest(zoneId: zoneId, entity: entity, name: name, content: content, type: type, module: module, templateId: templateId), logger: logger, on: eventLoop)
    }

    /// 创建自定义拦截页面
    ///
    /// 创建自定义拦截页面。
    @inlinable
    public func createSecurityDropPage(zoneId: String, entity: String, name: String, content: String, type: String, module: String, templateId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSecurityDropPageResponse {
        try await self.createSecurityDropPage(CreateSecurityDropPageRequest(zoneId: zoneId, entity: entity, name: name, content: content, type: type, module: module, templateId: templateId), logger: logger, on: eventLoop)
    }
}
