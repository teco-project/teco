//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tke {
    /// 删除模板
    ///
    /// 删除一个云原生Prometheus配置模板
    @inlinable
    public func deletePrometheusTemplate(_ input: DeletePrometheusTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeletePrometheusTemplateResponse > {
        self.client.execute(action: "DeletePrometheusTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除模板
    ///
    /// 删除一个云原生Prometheus配置模板
    @inlinable
    public func deletePrometheusTemplate(_ input: DeletePrometheusTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrometheusTemplateResponse {
        try await self.client.execute(action: "DeletePrometheusTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeletePrometheusTemplate请求参数结构体
    public struct DeletePrometheusTemplateRequest: TCRequestModel {
        /// 模板id
        public let templateId: String
        
        public init (templateId: String) {
            self.templateId = templateId
        }
        
        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }
    
    /// DeletePrometheusTemplate返回参数结构体
    public struct DeletePrometheusTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}