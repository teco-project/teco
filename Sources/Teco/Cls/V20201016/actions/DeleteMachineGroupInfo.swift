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

extension Cls {
    /// DeleteMachineGroupInfo请求参数结构体
    public struct DeleteMachineGroupInfoRequest: TCRequestModel {
        /// 机器组ID
        public let groupId: String
        
        /// 机器组类型
        /// 目前type支持 ip 和 label
        public let machineGroupType: MachineGroupTypeInfo
        
        public init (groupId: String, machineGroupType: MachineGroupTypeInfo) {
            self.groupId = groupId
            self.machineGroupType = machineGroupType
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case machineGroupType = "MachineGroupType"
        }
    }
    
    /// DeleteMachineGroupInfo返回参数结构体
    public struct DeleteMachineGroupInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除机器组信息
    ///
    /// 用于删除机器组信息
    @inlinable
    public func deleteMachineGroupInfo(_ input: DeleteMachineGroupInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteMachineGroupInfoResponse > {
        self.client.execute(action: "DeleteMachineGroupInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除机器组信息
    ///
    /// 用于删除机器组信息
    @inlinable
    public func deleteMachineGroupInfo(_ input: DeleteMachineGroupInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMachineGroupInfoResponse {
        try await self.client.execute(action: "DeleteMachineGroupInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
