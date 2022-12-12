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

extension Tem {
    /// DeleteApplicationService请求参数结构体
    public struct DeleteApplicationServiceRequest: TCRequestModel {
        /// 服务id
        public let applicationId: String?
        
        /// 来源渠道
        public let sourceChannel: Int64?
        
        /// 环境ID
        public let environmentId: String?
        
        /// 访问方式服务名
        public let serviceName: String?
        
        public init (applicationId: String? = nil, sourceChannel: Int64? = nil, environmentId: String? = nil, serviceName: String? = nil) {
            self.applicationId = applicationId
            self.sourceChannel = sourceChannel
            self.environmentId = environmentId
            self.serviceName = serviceName
        }
        
        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case sourceChannel = "SourceChannel"
            case environmentId = "EnvironmentId"
            case serviceName = "ServiceName"
        }
    }
    
    /// DeleteApplicationService返回参数结构体
    public struct DeleteApplicationServiceResponse: TCResponseModel {
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
    
    /// 删除一条访问方式
    @inlinable
    public func deleteApplicationService(_ input: DeleteApplicationServiceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteApplicationServiceResponse > {
        self.client.execute(action: "DeleteApplicationService", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除一条访问方式
    @inlinable
    public func deleteApplicationService(_ input: DeleteApplicationServiceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteApplicationServiceResponse {
        try await self.client.execute(action: "DeleteApplicationService", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
