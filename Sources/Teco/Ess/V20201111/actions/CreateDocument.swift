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

extension Ess {
    /// CreateDocument请求参数结构体
    public struct CreateDocumentRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo
        
        /// 签署流程编号,由CreateFlow接口返回
        public let flowId: String
        
        /// 用户上传的模板ID
        public let templateId: String
        
        /// 文件名列表，单个文件名最大长度200个字符，暂时仅支持单文件发起
        public let fileNames: [String]
        
        /// 内容控件信息数组
        public let formFields: [FormField]?
        
        /// 是否需要生成预览文件 默认不生成；
        /// 预览链接有效期300秒；
        public let needPreview: Bool?
        
        /// 预览链接类型 默认:0-文件流, 1- H5链接 注意:此参数在NeedPreview 为true 时有效,
        public let previewType: Int64?
        
        /// 应用相关信息
        public let agent: Agent?
        
        /// 客户端Token，保持接口幂等性,最大长度64个字符
        public let clientToken: String?
        
        public init (`operator`: UserInfo, flowId: String, templateId: String, fileNames: [String], formFields: [FormField]? = nil, needPreview: Bool? = nil, previewType: Int64? = nil, agent: Agent? = nil, clientToken: String? = nil) {
            self.`operator` = `operator`
            self.flowId = flowId
            self.templateId = templateId
            self.fileNames = fileNames
            self.formFields = formFields
            self.needPreview = needPreview
            self.previewType = previewType
            self.agent = agent
            self.clientToken = clientToken
        }
        
        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowId = "FlowId"
            case templateId = "TemplateId"
            case fileNames = "FileNames"
            case formFields = "FormFields"
            case needPreview = "NeedPreview"
            case previewType = "PreviewType"
            case agent = "Agent"
            case clientToken = "ClientToken"
        }
    }
    
    /// CreateDocument返回参数结构体
    public struct CreateDocumentResponse: TCResponseModel {
        /// 签署流程电子文档ID
        public let documentId: String
        
        /// 签署流程文件的预览地址, 5分钟内有效。仅当NeedPreview为true 时返回
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let previewFileUrl: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case documentId = "DocumentId"
            case previewFileUrl = "PreviewFileUrl"
            case requestId = "RequestId"
        }
    }
    
    /// 创建电子文档
    ///
    /// 创建签署流程电子文档
    /// 适用场景：见创建签署流程接口。
    /// 注：该接口需要给对应的流程指定一个模板id，并且填充该模板中需要补充的信息。是“发起流程”接口的前置接口。
    @inlinable
    public func createDocument(_ input: CreateDocumentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDocumentResponse > {
        self.client.execute(action: "CreateDocument", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建电子文档
    ///
    /// 创建签署流程电子文档
    /// 适用场景：见创建签署流程接口。
    /// 注：该接口需要给对应的流程指定一个模板id，并且填充该模板中需要补充的信息。是“发起流程”接口的前置接口。
    @inlinable
    public func createDocument(_ input: CreateDocumentRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDocumentResponse {
        try await self.client.execute(action: "CreateDocument", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
