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

extension Tem {
    /// 修改服务访问方式列表
    ///
    /// 修改服务访问方式列表
    @inlinable
    public func modifyApplicationService(_ input: ModifyApplicationServiceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyApplicationServiceResponse > {
        self.client.execute(action: "ModifyApplicationService", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改服务访问方式列表
    ///
    /// 修改服务访问方式列表
    @inlinable
    public func modifyApplicationService(_ input: ModifyApplicationServiceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyApplicationServiceResponse {
        try await self.client.execute(action: "ModifyApplicationService", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyApplicationService请求参数结构体
    public struct ModifyApplicationServiceRequest: TCRequestModel {
        /// 服务id
        public let applicationId: String
        
        /// 环境ID
        public let environmentId: String
        
        /// 来源渠道
        public let sourceChannel: Int64?
        
        /// 全量访问方式设置
        public let service: EksService
        
        /// 单条访问方式设置
        public let data: ServicePortMapping
        
        public init (applicationId: String, environmentId: String, sourceChannel: Int64?, service: EksService, data: ServicePortMapping) {
            self.applicationId = applicationId
            self.environmentId = environmentId
            self.sourceChannel = sourceChannel
            self.service = service
            self.data = data
        }
        
        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case environmentId = "EnvironmentId"
            case sourceChannel = "SourceChannel"
            case service = "Service"
            case data = "Data"
        }
    }
    
    /// ModifyApplicationService返回参数结构体
    public struct ModifyApplicationServiceResponse: TCResponseModel {
        /// 是否成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}