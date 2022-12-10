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

extension Cynosdb {
    /// 切换到从可用区
    @inlinable
    public func switchClusterZone(_ input: SwitchClusterZoneRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SwitchClusterZoneResponse > {
        self.client.execute(action: "SwitchClusterZone", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 切换到从可用区
    @inlinable
    public func switchClusterZone(_ input: SwitchClusterZoneRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwitchClusterZoneResponse {
        try await self.client.execute(action: "SwitchClusterZone", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// SwitchClusterZone请求参数结构体
    public struct SwitchClusterZoneRequest: TCRequestModel {
        /// 集群Id
        public let clusterId: String
        
        /// 当前可用区
        public let oldZone: String
        
        /// 要切换到的可用区
        public let newZone: String
        
        /// 维护期间执行-yes,立即执行-no
        public let isInMaintainPeriod: String?
        
        public init (clusterId: String, oldZone: String, newZone: String, isInMaintainPeriod: String?) {
            self.clusterId = clusterId
            self.oldZone = oldZone
            self.newZone = newZone
            self.isInMaintainPeriod = isInMaintainPeriod
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case oldZone = "OldZone"
            case newZone = "NewZone"
            case isInMaintainPeriod = "IsInMaintainPeriod"
        }
    }
    
    /// SwitchClusterZone返回参数结构体
    public struct SwitchClusterZoneResponse: TCResponseModel {
        /// 异步FlowId
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
}
