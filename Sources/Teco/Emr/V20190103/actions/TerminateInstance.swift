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

extension Emr {
    /// 销毁EMR实例
    ///
    /// 销毁EMR实例。此接口仅支持弹性MapReduce正式计费版本。
    @inlinable
    public func terminateInstance(_ input: TerminateInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < TerminateInstanceResponse > {
        self.client.execute(action: "TerminateInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 销毁EMR实例
    ///
    /// 销毁EMR实例。此接口仅支持弹性MapReduce正式计费版本。
    @inlinable
    public func terminateInstance(_ input: TerminateInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateInstanceResponse {
        try await self.client.execute(action: "TerminateInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// TerminateInstance请求参数结构体
    public struct TerminateInstanceRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String
        
        /// 销毁节点ID。该参数为预留参数，用户无需配置。
        public let resourceIds: [String]?
        
        public init (instanceId: String, resourceIds: [String]?) {
            self.instanceId = instanceId
            self.resourceIds = resourceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case resourceIds = "ResourceIds"
        }
    }
    
    /// TerminateInstance返回参数结构体
    public struct TerminateInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}