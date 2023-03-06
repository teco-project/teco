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

import TecoPaginationHelpers

extension Ecm {
    /// DescribeNetworkInterfaces请求参数结构体
    public struct DescribeNetworkInterfacesRequest: TCPaginatedRequest {
        /// 弹性网卡实例ID查询。形如：eni-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定NetworkInterfaceIds和Filters。
        public let networkInterfaceIds: [String]?

        /// 过滤条件，参数不支持同时指定NetworkInterfaceIds和Filters。
        /// vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。
        /// subnet-id - String - （过滤条件）所属子网实例ID，形如：subnet-f49l6u0z。
        /// network-interface-id - String - （过滤条件）弹性网卡实例ID，形如：eni-5k56k7k7。
        /// attachment.instance-id - String - （过滤条件）绑定的云服务器实例ID，形如：ein-3nqpdn3i。
        /// groups.security-group-id - String - （过滤条件）绑定的安全组实例ID，例如：sg-f9ekbxeq。
        /// network-interface-name - String - （过滤条件）网卡实例名称。
        /// network-interface-description - String - （过滤条件）网卡实例描述。
        /// address-ip - String - （过滤条件）内网IPv4地址。
        /// tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。使用请参考示例2
        /// tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例3。
        /// is-primary - Boolean - 是否必填：否 - （过滤条件）按照是否主网卡进行过滤。值为true时，仅过滤主网卡；值为false时，仅过滤辅助网卡；次过滤参数为提供时，同时过滤主网卡和辅助网卡。
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// ECM 地域，形如ap-xian-ecm。
        public let ecmRegion: String?

        public init(networkInterfaceIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ecmRegion: String? = nil) {
            self.networkInterfaceIds = networkInterfaceIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.ecmRegion = ecmRegion
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceIds = "NetworkInterfaceIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case ecmRegion = "EcmRegion"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeNetworkInterfacesResponse) -> DescribeNetworkInterfacesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNetworkInterfacesRequest(networkInterfaceIds: self.networkInterfaceIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, ecmRegion: self.ecmRegion)
        }
    }

    /// DescribeNetworkInterfaces返回参数结构体
    public struct DescribeNetworkInterfacesResponse: TCPaginatedResponse {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 实例详细信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let networkInterfaceSet: [NetworkInterface]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case networkInterfaceSet = "NetworkInterfaceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NetworkInterface] {
            self.networkInterfaceSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询弹性网卡列表
    @inlinable
    public func describeNetworkInterfaces(_ input: DescribeNetworkInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkInterfacesResponse> {
        self.client.execute(action: "DescribeNetworkInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询弹性网卡列表
    @inlinable
    public func describeNetworkInterfaces(_ input: DescribeNetworkInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkInterfacesResponse {
        try await self.client.execute(action: "DescribeNetworkInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询弹性网卡列表
    @inlinable
    public func describeNetworkInterfaces(networkInterfaceIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ecmRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkInterfacesResponse> {
        let input = DescribeNetworkInterfacesRequest(networkInterfaceIds: networkInterfaceIds, filters: filters, offset: offset, limit: limit, ecmRegion: ecmRegion)
        return self.client.execute(action: "DescribeNetworkInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询弹性网卡列表
    @inlinable
    public func describeNetworkInterfaces(networkInterfaceIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, ecmRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkInterfacesResponse {
        let input = DescribeNetworkInterfacesRequest(networkInterfaceIds: networkInterfaceIds, filters: filters, offset: offset, limit: limit, ecmRegion: ecmRegion)
        return try await self.client.execute(action: "DescribeNetworkInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询弹性网卡列表
    @inlinable
    public func describeNetworkInterfacesPaginated(_ input: DescribeNetworkInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NetworkInterface])> {
        self.client.paginate(input: input, region: region, command: self.describeNetworkInterfaces, logger: logger, on: eventLoop)
    }

    /// 查询弹性网卡列表
    @inlinable @discardableResult
    public func describeNetworkInterfacesPaginated(_ input: DescribeNetworkInterfacesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNetworkInterfacesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNetworkInterfaces, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询弹性网卡列表
    @inlinable
    public func describeNetworkInterfacesPaginator(_ input: DescribeNetworkInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNetworkInterfacesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNetworkInterfaces, logger: logger, on: eventLoop)
    }
}
