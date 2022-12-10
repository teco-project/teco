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

extension Tke {
    /// 修改模板实例
    ///
    /// 修改模板内容
    @inlinable
    public func modifyPrometheusTemp(_ input: ModifyPrometheusTempRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyPrometheusTempResponse > {
        self.client.execute(action: "ModifyPrometheusTemp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改模板实例
    ///
    /// 修改模板内容
    @inlinable
    public func modifyPrometheusTemp(_ input: ModifyPrometheusTempRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusTempResponse {
        try await self.client.execute(action: "ModifyPrometheusTemp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyPrometheusTemp请求参数结构体
    public struct ModifyPrometheusTempRequest: TCRequestModel {
        /// 模板ID
        public let templateId: String
        
        /// 修改内容
        public let template: PrometheusTempModify
        
        public init (templateId: String, template: PrometheusTempModify) {
            self.templateId = templateId
            self.template = template
        }
        
        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case template = "Template"
        }
    }
    
    /// ModifyPrometheusTemp返回参数结构体
    public struct ModifyPrometheusTempResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
