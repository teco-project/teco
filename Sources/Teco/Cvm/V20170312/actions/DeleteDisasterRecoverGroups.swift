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

extension Cvm {
    /// DeleteDisasterRecoverGroups请求参数结构体
    public struct DeleteDisasterRecoverGroupsRequest: TCRequestModel {
        /// 分散置放群组ID列表，可通过[DescribeDisasterRecoverGroups](https://cloud.tencent.com/document/api/213/17810)接口获取。每次请求允许操作的分散置放群组数量上限是100。
        public let disasterRecoverGroupIds: [String]
        
        public init (disasterRecoverGroupIds: [String]) {
            self.disasterRecoverGroupIds = disasterRecoverGroupIds
        }
        
        enum CodingKeys: String, CodingKey {
            case disasterRecoverGroupIds = "DisasterRecoverGroupIds"
        }
    }
    
    /// DeleteDisasterRecoverGroups返回参数结构体
    public struct DeleteDisasterRecoverGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除分散置放群组
    ///
    /// 本接口 (DeleteDisasterRecoverGroups)用于删除[分散置放群组](https://cloud.tencent.com/document/product/213/15486)。只有空的置放群组才能被删除，非空的群组需要先销毁组内所有云服务器，才能执行删除操作，不然会产生删除置放群组失败的错误。
    @inlinable
    public func deleteDisasterRecoverGroups(_ input: DeleteDisasterRecoverGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteDisasterRecoverGroupsResponse > {
        self.client.execute(action: "DeleteDisasterRecoverGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除分散置放群组
    ///
    /// 本接口 (DeleteDisasterRecoverGroups)用于删除[分散置放群组](https://cloud.tencent.com/document/product/213/15486)。只有空的置放群组才能被删除，非空的群组需要先销毁组内所有云服务器，才能执行删除操作，不然会产生删除置放群组失败的错误。
    @inlinable
    public func deleteDisasterRecoverGroups(_ input: DeleteDisasterRecoverGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDisasterRecoverGroupsResponse {
        try await self.client.execute(action: "DeleteDisasterRecoverGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
