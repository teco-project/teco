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

import TecoCore

extension Tsf {
    /// DescribeContainerGroupDetail请求参数结构体
    public struct DescribeContainerGroupDetailRequest: TCRequestModel {
        /// 分组ID
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// DescribeContainerGroupDetail返回参数结构体
    public struct DescribeContainerGroupDetailResponse: TCResponseModel {
        /// 容器部署组详情
        public let result: ContainerGroupDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询容器部署组详情
    ///
    /// 容器部署组详情（已废弃，请使用  DescribeContainerGroupDeployInfo）
    @inlinable
    public func describeContainerGroupDetail(_ input: DescribeContainerGroupDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerGroupDetailResponse> {
        self.client.execute(action: "DescribeContainerGroupDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器部署组详情
    ///
    /// 容器部署组详情（已废弃，请使用  DescribeContainerGroupDeployInfo）
    @inlinable
    public func describeContainerGroupDetail(_ input: DescribeContainerGroupDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerGroupDetailResponse {
        try await self.client.execute(action: "DescribeContainerGroupDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器部署组详情
    ///
    /// 容器部署组详情（已废弃，请使用  DescribeContainerGroupDeployInfo）
    @inlinable
    public func describeContainerGroupDetail(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeContainerGroupDetailResponse> {
        self.describeContainerGroupDetail(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器部署组详情
    ///
    /// 容器部署组详情（已废弃，请使用  DescribeContainerGroupDeployInfo）
    @inlinable
    public func describeContainerGroupDetail(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeContainerGroupDetailResponse {
        try await self.describeContainerGroupDetail(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
