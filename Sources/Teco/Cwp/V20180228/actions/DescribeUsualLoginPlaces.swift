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

extension Cwp {
    /// DescribeUsualLoginPlaces请求参数结构体
    public struct DescribeUsualLoginPlacesRequest: TCRequestModel {
        /// 云镜客户端UUID
        public let uuid: String

        public init(uuid: String) {
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
        }
    }

    /// DescribeUsualLoginPlaces返回参数结构体
    public struct DescribeUsualLoginPlacesResponse: TCResponseModel {
        /// 常用登录地数组
        public let usualLoginPlaces: [UsualPlace]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case usualLoginPlaces = "UsualLoginPlaces"
            case requestId = "RequestId"
        }
    }

    /// 查询常用登录地
    ///
    /// 此接口（DescribeUsualLoginPlaces）用于查询常用登录地。
    @inlinable
    public func describeUsualLoginPlaces(_ input: DescribeUsualLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsualLoginPlacesResponse> {
        self.client.execute(action: "DescribeUsualLoginPlaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询常用登录地
    ///
    /// 此接口（DescribeUsualLoginPlaces）用于查询常用登录地。
    @inlinable
    public func describeUsualLoginPlaces(_ input: DescribeUsualLoginPlacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsualLoginPlacesResponse {
        try await self.client.execute(action: "DescribeUsualLoginPlaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询常用登录地
    ///
    /// 此接口（DescribeUsualLoginPlaces）用于查询常用登录地。
    @inlinable
    public func describeUsualLoginPlaces(uuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsualLoginPlacesResponse> {
        self.describeUsualLoginPlaces(DescribeUsualLoginPlacesRequest(uuid: uuid), region: region, logger: logger, on: eventLoop)
    }

    /// 查询常用登录地
    ///
    /// 此接口（DescribeUsualLoginPlaces）用于查询常用登录地。
    @inlinable
    public func describeUsualLoginPlaces(uuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsualLoginPlacesResponse {
        try await self.describeUsualLoginPlaces(DescribeUsualLoginPlacesRequest(uuid: uuid), region: region, logger: logger, on: eventLoop)
    }
}
