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

extension Clb {
    /// 删除目标组
    @inlinable
    public func deleteTargetGroups(_ input: DeleteTargetGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTargetGroupsResponse > {
        self.client.execute(action: "DeleteTargetGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除目标组
    @inlinable
    public func deleteTargetGroups(_ input: DeleteTargetGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTargetGroupsResponse {
        try await self.client.execute(action: "DeleteTargetGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteTargetGroups请求参数结构体
    public struct DeleteTargetGroupsRequest: TCRequestModel {
        /// 目标组的ID数组。
        public let targetGroupIds: [String]
        
        public init (targetGroupIds: [String]) {
            self.targetGroupIds = targetGroupIds
        }
        
        enum CodingKeys: String, CodingKey {
            case targetGroupIds = "TargetGroupIds"
        }
    }
    
    /// DeleteTargetGroups返回参数结构体
    public struct DeleteTargetGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
