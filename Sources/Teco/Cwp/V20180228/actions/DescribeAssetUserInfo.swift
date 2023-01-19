//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cwp {
    /// DescribeAssetUserInfo请求参数结构体
    public struct DescribeAssetUserInfoRequest: TCRequestModel {
        /// 云服务器UUID
        public let quuid: String

        /// 主机安全UUID
        public let uuid: String

        /// 账户名
        public let name: String

        public init(quuid: String, uuid: String, name: String) {
            self.quuid = quuid
            self.uuid = uuid
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case uuid = "Uuid"
            case name = "Name"
        }
    }

    /// DescribeAssetUserInfo返回参数结构体
    public struct DescribeAssetUserInfoResponse: TCResponseModel {
        /// 用户详细信息
        public let user: AssetUserDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case user = "User"
            case requestId = "RequestId"
        }
    }

    /// 获取主机账号详情
    @inlinable
    public func describeAssetUserInfo(_ input: DescribeAssetUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetUserInfoResponse> {
        self.client.execute(action: "DescribeAssetUserInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取主机账号详情
    @inlinable
    public func describeAssetUserInfo(_ input: DescribeAssetUserInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetUserInfoResponse {
        try await self.client.execute(action: "DescribeAssetUserInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取主机账号详情
    @inlinable
    public func describeAssetUserInfo(quuid: String, uuid: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetUserInfoResponse> {
        self.describeAssetUserInfo(DescribeAssetUserInfoRequest(quuid: quuid, uuid: uuid, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 获取主机账号详情
    @inlinable
    public func describeAssetUserInfo(quuid: String, uuid: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetUserInfoResponse {
        try await self.describeAssetUserInfo(DescribeAssetUserInfoRequest(quuid: quuid, uuid: uuid, name: name), region: region, logger: logger, on: eventLoop)
    }
}
