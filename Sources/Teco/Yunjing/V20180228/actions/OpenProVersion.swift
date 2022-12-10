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

extension Yunjing {
    /// 开通专业版
    ///
    /// 本接口 (OpenProVersion) 用于开通专业版。
    @inlinable
    public func openProVersion(_ input: OpenProVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < OpenProVersionResponse > {
        self.client.execute(action: "OpenProVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 开通专业版
    ///
    /// 本接口 (OpenProVersion) 用于开通专业版。
    @inlinable
    public func openProVersion(_ input: OpenProVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenProVersionResponse {
        try await self.client.execute(action: "OpenProVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// OpenProVersion请求参数结构体
    public struct OpenProVersionRequest: TCRequestModel {
        /// 云主机类型。
        /// <li>CVM：表示虚拟主机</li>
        /// <li>BM:  表示黑石物理机</li>
        public let machineType: String
        
        /// 机器所属地域。
        /// 如：ap-guangzhou，ap-shanghai
        public let machineRegion: String
        
        /// 主机唯一标识Uuid数组。
        /// 黑石的InstanceId，CVM的Uuid
        public let quuids: [String]
        
        /// 活动ID。
        public let activityId: UInt64?
        
        public init (machineType: String, machineRegion: String, quuids: [String], activityId: UInt64?) {
            self.machineType = machineType
            self.machineRegion = machineRegion
            self.quuids = quuids
            self.activityId = activityId
        }
        
        enum CodingKeys: String, CodingKey {
            case machineType = "MachineType"
            case machineRegion = "MachineRegion"
            case quuids = "Quuids"
            case activityId = "ActivityId"
        }
    }
    
    /// OpenProVersion返回参数结构体
    public struct OpenProVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
