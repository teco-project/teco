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
    /// CreatePrometheusTemp请求参数结构体
    public struct CreatePrometheusTempRequest: TCRequestModel {
        /// 模板设置
        public let template: PrometheusTemp
        
        public init (template: PrometheusTemp) {
            self.template = template
        }
        
        enum CodingKeys: String, CodingKey {
            case template = "Template"
        }
    }
    
    /// CreatePrometheusTemp返回参数结构体
    public struct CreatePrometheusTempResponse: TCResponseModel {
        /// 模板Id
        public let templateId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case requestId = "RequestId"
        }
    }
    
    /// 新建模板
    ///
    /// 创建一个云原生Prometheus模板
    @inlinable
    public func createPrometheusTemp(_ input: CreatePrometheusTempRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePrometheusTempResponse > {
        self.client.execute(action: "CreatePrometheusTemp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 新建模板
    ///
    /// 创建一个云原生Prometheus模板
    @inlinable
    public func createPrometheusTemp(_ input: CreatePrometheusTempRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePrometheusTempResponse {
        try await self.client.execute(action: "CreatePrometheusTemp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
