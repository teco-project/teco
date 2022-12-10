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

extension Cls {
    /// 应用采集配置到指定机器组
    ///
    /// 应用采集配置到指定机器组
    @inlinable
    public func applyConfigToMachineGroup(_ input: ApplyConfigToMachineGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ApplyConfigToMachineGroupResponse > {
        self.client.execute(action: "ApplyConfigToMachineGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 应用采集配置到指定机器组
    ///
    /// 应用采集配置到指定机器组
    @inlinable
    public func applyConfigToMachineGroup(_ input: ApplyConfigToMachineGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ApplyConfigToMachineGroupResponse {
        try await self.client.execute(action: "ApplyConfigToMachineGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ApplyConfigToMachineGroup请求参数结构体
    public struct ApplyConfigToMachineGroupRequest: TCRequestModel {
        /// 采集配置ID
        public let configId: String
        
        /// 机器组ID
        public let groupId: String
        
        public init (configId: String, groupId: String) {
            self.configId = configId
            self.groupId = groupId
        }
        
        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case groupId = "GroupId"
        }
    }
    
    /// ApplyConfigToMachineGroup返回参数结构体
    public struct ApplyConfigToMachineGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}