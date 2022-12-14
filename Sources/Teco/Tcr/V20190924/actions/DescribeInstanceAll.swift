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

extension Tcr {
    /// DescribeInstanceAll请求参数结构体
    public struct DescribeInstanceAllRequest: TCRequestModel {
        /// 实例ID列表(为空时，
        /// 表示获取账号下所有实例)
        public let registryids: [String]?

        /// 偏移量,默认0
        public let offset: Int64?

        /// 最大输出条数，默认20，最大为100
        public let limit: Int64?

        /// 过滤条件
        public let filters: [Filter]?

        /// 获取所有地域的实例，默认为False
        public let allRegion: Bool?

        public init(registryids: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, allRegion: Bool? = nil) {
            self.registryids = registryids
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.allRegion = allRegion
        }

        enum CodingKeys: String, CodingKey {
            case registryids = "Registryids"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case allRegion = "AllRegion"
        }
    }

    /// DescribeInstanceAll返回参数结构体
    public struct DescribeInstanceAllResponse: TCResponseModel {
        /// 总实例个数
        public let totalCount: Int64

        /// 实例信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registries: [Registry]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case registries = "Registries"
            case requestId = "RequestId"
        }
    }

    /// 查询全部实例信息
    @inlinable
    public func describeInstanceAll(_ input: DescribeInstanceAllRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceAllResponse > {
        self.client.execute(action: "DescribeInstanceAll", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询全部实例信息
    @inlinable
    public func describeInstanceAll(_ input: DescribeInstanceAllRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceAllResponse {
        try await self.client.execute(action: "DescribeInstanceAll", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询全部实例信息
    @inlinable
    public func describeInstanceAll(registryids: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, allRegion: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceAllResponse > {
        self.describeInstanceAll(DescribeInstanceAllRequest(registryids: registryids, offset: offset, limit: limit, filters: filters, allRegion: allRegion), logger: logger, on: eventLoop)
    }

    /// 查询全部实例信息
    @inlinable
    public func describeInstanceAll(registryids: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, filters: [Filter]? = nil, allRegion: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceAllResponse {
        try await self.describeInstanceAll(DescribeInstanceAllRequest(registryids: registryids, offset: offset, limit: limit, filters: filters, allRegion: allRegion), logger: logger, on: eventLoop)
    }
}
