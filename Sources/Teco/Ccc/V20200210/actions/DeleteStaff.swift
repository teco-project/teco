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

extension Ccc {
    /// DeleteStaff请求参数结构体
    public struct DeleteStaffRequest: TCRequestModel {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64

        /// 待删除客服邮箱列表
        public let staffList: [String]

        public init(sdkAppId: Int64, staffList: [String]) {
            self.sdkAppId = sdkAppId
            self.staffList = staffList
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case staffList = "StaffList"
        }
    }

    /// DeleteStaff返回参数结构体
    public struct DeleteStaffResponse: TCResponseModel {
        /// 无法删除的状态为在线的客服列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let onlineStaffList: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case onlineStaffList = "OnlineStaffList"
            case requestId = "RequestId"
        }
    }

    /// 删除坐席信息
    @inlinable
    public func deleteStaff(_ input: DeleteStaffRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStaffResponse> {
        self.client.execute(action: "DeleteStaff", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除坐席信息
    @inlinable
    public func deleteStaff(_ input: DeleteStaffRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStaffResponse {
        try await self.client.execute(action: "DeleteStaff", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除坐席信息
    @inlinable
    public func deleteStaff(sdkAppId: Int64, staffList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteStaffResponse> {
        let input = DeleteStaffRequest(sdkAppId: sdkAppId, staffList: staffList)
        return self.client.execute(action: "DeleteStaff", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除坐席信息
    @inlinable
    public func deleteStaff(sdkAppId: Int64, staffList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteStaffResponse {
        let input = DeleteStaffRequest(sdkAppId: sdkAppId, staffList: staffList)
        return try await self.client.execute(action: "DeleteStaff", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
