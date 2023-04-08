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

extension Cdn {
    /// DescribeMapInfo请求参数结构体
    public struct DescribeMapInfoRequest: TCRequestModel {
        /// 映射查询类别：
        /// isp：运营商映射查询
        /// district：省份（中国境内）、国家/地区（中国境外）映射查询
        public let name: String

        public init(name: String) {
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    /// DescribeMapInfo返回参数结构体
    public struct DescribeMapInfoResponse: TCResponseModel {
        /// 映射关系数组。
        public let mapInfoList: [MapInfo]

        /// 服务端区域id和子区域id的映射关系。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serverRegionRelation: [RegionMapRelation]?

        /// 客户端区域id和子区域id的映射关系。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientRegionRelation: [RegionMapRelation]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mapInfoList = "MapInfoList"
            case serverRegionRelation = "ServerRegionRelation"
            case clientRegionRelation = "ClientRegionRelation"
            case requestId = "RequestId"
        }
    }

    /// 省份运营商映射查询
    ///
    /// DescribeMapInfo 用于查询省份对应的 ID，运营商对应的 ID 信息。
    @inlinable
    public func describeMapInfo(_ input: DescribeMapInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMapInfoResponse> {
        self.client.execute(action: "DescribeMapInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 省份运营商映射查询
    ///
    /// DescribeMapInfo 用于查询省份对应的 ID，运营商对应的 ID 信息。
    @inlinable
    public func describeMapInfo(_ input: DescribeMapInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMapInfoResponse {
        try await self.client.execute(action: "DescribeMapInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 省份运营商映射查询
    ///
    /// DescribeMapInfo 用于查询省份对应的 ID，运营商对应的 ID 信息。
    @inlinable
    public func describeMapInfo(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMapInfoResponse> {
        self.describeMapInfo(.init(name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 省份运营商映射查询
    ///
    /// DescribeMapInfo 用于查询省份对应的 ID，运营商对应的 ID 信息。
    @inlinable
    public func describeMapInfo(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMapInfoResponse {
        try await self.describeMapInfo(.init(name: name), region: region, logger: logger, on: eventLoop)
    }
}
