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

extension Bmvpc {
    /// 托管机器移除子网(批量接口)
    ///
    /// 托管机器移除子网批量接口，传入一台托管机器和多个子网，批量移除这些子网。异步接口，接口返回TaskId。
    @inlinable
    public func deleteHostedInterfaces(_ input: DeleteHostedInterfacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteHostedInterfacesResponse > {
        self.client.execute(action: "DeleteHostedInterfaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 托管机器移除子网(批量接口)
    ///
    /// 托管机器移除子网批量接口，传入一台托管机器和多个子网，批量移除这些子网。异步接口，接口返回TaskId。
    @inlinable
    public func deleteHostedInterfaces(_ input: DeleteHostedInterfacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteHostedInterfacesResponse {
        try await self.client.execute(action: "DeleteHostedInterfaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteHostedInterfaces请求参数结构体
    public struct DeleteHostedInterfacesRequest: TCRequestModel {
        /// 物理机ID
        public let instanceId: String
        
        /// 物理机ID
        public let subnetIds: [String]
        
        public init (instanceId: String, subnetIds: [String]) {
            self.instanceId = instanceId
            self.subnetIds = subnetIds
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case subnetIds = "SubnetIds"
        }
    }
    
    /// DeleteHostedInterfaces返回参数结构体
    public struct DeleteHostedInterfacesResponse: TCResponseModel {
        /// 异步任务ID
        public let taskId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}