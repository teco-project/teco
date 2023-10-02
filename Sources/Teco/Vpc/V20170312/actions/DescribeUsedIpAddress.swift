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

import Logging
import NIOCore
import TecoCore

extension Vpc {
    /// DescribeUsedIpAddress请求参数结构体
    public struct DescribeUsedIpAddressRequest: TCPaginatedRequest {
        /// VPC实例ID。
        public let vpcId: String

        /// 子网实例ID。
        public let subnetId: String?

        /// 查询是否占用的ip列表，ip需要在vpc或子网内。最多允许一次查询100个IP。
        public let ipAddresses: [String]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(vpcId: String, subnetId: String? = nil, ipAddresses: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.ipAddresses = ipAddresses
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case ipAddresses = "IpAddresses"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUsedIpAddressResponse) -> DescribeUsedIpAddressRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(vpcId: self.vpcId, subnetId: self.subnetId, ipAddresses: self.ipAddresses, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeUsedIpAddress返回参数结构体
    public struct DescribeUsedIpAddressResponse: TCPaginatedResponse {
        /// 占用ip地址的资源信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ipAddressStates: [IpAddressStates]?

        /// 返回占用资源的个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ipAddressStates = "IpAddressStates"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``IpAddressStates`` list from the paginated response.
        public func getItems() -> [IpAddressStates] {
            self.ipAddressStates ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查看子网或者vpc内IP使用情况
    ///
    /// 本接口(DescribeUsedIpAddress)用于查询Subnet或者Vpc内的ip的使用情况，
    /// 如ip被占用，返回占用ip的资源类别与id；如未被占用，返回空值
    @inlinable
    public func describeUsedIpAddress(_ input: DescribeUsedIpAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsedIpAddressResponse> {
        self.client.execute(action: "DescribeUsedIpAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看子网或者vpc内IP使用情况
    ///
    /// 本接口(DescribeUsedIpAddress)用于查询Subnet或者Vpc内的ip的使用情况，
    /// 如ip被占用，返回占用ip的资源类别与id；如未被占用，返回空值
    @inlinable
    public func describeUsedIpAddress(_ input: DescribeUsedIpAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsedIpAddressResponse {
        try await self.client.execute(action: "DescribeUsedIpAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看子网或者vpc内IP使用情况
    ///
    /// 本接口(DescribeUsedIpAddress)用于查询Subnet或者Vpc内的ip的使用情况，
    /// 如ip被占用，返回占用ip的资源类别与id；如未被占用，返回空值
    @inlinable
    public func describeUsedIpAddress(vpcId: String, subnetId: String? = nil, ipAddresses: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsedIpAddressResponse> {
        self.describeUsedIpAddress(.init(vpcId: vpcId, subnetId: subnetId, ipAddresses: ipAddresses, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看子网或者vpc内IP使用情况
    ///
    /// 本接口(DescribeUsedIpAddress)用于查询Subnet或者Vpc内的ip的使用情况，
    /// 如ip被占用，返回占用ip的资源类别与id；如未被占用，返回空值
    @inlinable
    public func describeUsedIpAddress(vpcId: String, subnetId: String? = nil, ipAddresses: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsedIpAddressResponse {
        try await self.describeUsedIpAddress(.init(vpcId: vpcId, subnetId: subnetId, ipAddresses: ipAddresses, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看子网或者vpc内IP使用情况
    ///
    /// 本接口(DescribeUsedIpAddress)用于查询Subnet或者Vpc内的ip的使用情况，
    /// 如ip被占用，返回占用ip的资源类别与id；如未被占用，返回空值
    @inlinable
    public func describeUsedIpAddressPaginated(_ input: DescribeUsedIpAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [IpAddressStates])> {
        self.client.paginate(input: input, region: region, command: self.describeUsedIpAddress, logger: logger, on: eventLoop)
    }

    /// 查看子网或者vpc内IP使用情况
    ///
    /// 本接口(DescribeUsedIpAddress)用于查询Subnet或者Vpc内的ip的使用情况，
    /// 如ip被占用，返回占用ip的资源类别与id；如未被占用，返回空值
    @inlinable @discardableResult
    public func describeUsedIpAddressPaginated(_ input: DescribeUsedIpAddressRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUsedIpAddressResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUsedIpAddress, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看子网或者vpc内IP使用情况
    ///
    /// 本接口(DescribeUsedIpAddress)用于查询Subnet或者Vpc内的ip的使用情况，
    /// 如ip被占用，返回占用ip的资源类别与id；如未被占用，返回空值
    ///
    /// - Returns: `AsyncSequence`s of ``IpAddressStates`` and ``DescribeUsedIpAddressResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUsedIpAddressPaginator(_ input: DescribeUsedIpAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUsedIpAddressRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUsedIpAddress, logger: logger, on: eventLoop)
    }
}
