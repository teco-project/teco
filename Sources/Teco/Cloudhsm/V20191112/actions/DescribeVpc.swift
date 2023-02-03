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

extension Cloudhsm {
    /// DescribeVpc请求参数结构体
    public struct DescribeVpcRequest: TCRequestModel {
        /// 返回偏移量。Offset最小为0。
        public let offset: Int64

        /// 返回数量。Limit需要在[1, 100]之间。
        public let limit: Int64

        /// 搜索关键字
        public let searchWord: String?

        public init(offset: Int64, limit: Int64, searchWord: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
        }
    }

    /// DescribeVpc返回参数结构体
    public struct DescribeVpcResponse: TCResponseModel {
        /// 可查询到的所有Vpc实例总数。
        public let totalCount: Int64

        /// Vpc对象列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcList: [Vpc]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vpcList = "VpcList"
            case requestId = "RequestId"
        }
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpc(_ input: DescribeVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcResponse> {
        self.client.execute(action: "DescribeVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpc(_ input: DescribeVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcResponse {
        try await self.client.execute(action: "DescribeVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpc(offset: Int64, limit: Int64, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcResponse> {
        let input = DescribeVpcRequest(offset: offset, limit: limit, searchWord: searchWord)
        return self.client.execute(action: "DescribeVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpc(offset: Int64, limit: Int64, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcResponse {
        let input = DescribeVpcRequest(offset: offset, limit: limit, searchWord: searchWord)
        return try await self.client.execute(action: "DescribeVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
