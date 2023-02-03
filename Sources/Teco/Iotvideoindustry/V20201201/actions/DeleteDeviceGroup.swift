//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotvideoindustry {
    /// DeleteDeviceGroup请求参数结构体
    public struct DeleteDeviceGroupRequest: TCRequestModel {
        /// 分组ID
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// DeleteDeviceGroup返回参数结构体
    public struct DeleteDeviceGroupResponse: TCResponseModel {
        /// 响应结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 删除分组
    ///
    /// 本接口(DeleteDeviceGroup)用于删除分组。
    @inlinable
    public func deleteDeviceGroup(_ input: DeleteDeviceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceGroupResponse> {
        self.client.execute(action: "DeleteDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除分组
    ///
    /// 本接口(DeleteDeviceGroup)用于删除分组。
    @inlinable
    public func deleteDeviceGroup(_ input: DeleteDeviceGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceGroupResponse {
        try await self.client.execute(action: "DeleteDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除分组
    ///
    /// 本接口(DeleteDeviceGroup)用于删除分组。
    @inlinable
    public func deleteDeviceGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDeviceGroupResponse> {
        let input = DeleteDeviceGroupRequest(groupId: groupId)
        return self.client.execute(action: "DeleteDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除分组
    ///
    /// 本接口(DeleteDeviceGroup)用于删除分组。
    @inlinable
    public func deleteDeviceGroup(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDeviceGroupResponse {
        let input = DeleteDeviceGroupRequest(groupId: groupId)
        return try await self.client.execute(action: "DeleteDeviceGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
