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
import TecoPaginationHelpers

extension Vpc {
    /// DescribeAddresses请求参数结构体
    public struct DescribeAddressesRequest: TCPaginatedRequest {
        /// 标识 EIP 的唯一 ID 列表。EIP 唯一 ID 形如：`eip-11112222`。参数不支持同时指定`AddressIds`和`Filters.address-id`。
        public let addressIds: [String]?

        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为100。详细的过滤条件如下：
        /// - address-id - String - 是否必填：否 - （过滤条件）按照 EIP 的唯一 ID 过滤。EIP 唯一 ID 形如：eip-11112222。
        /// - address-name - String - 是否必填：否 - （过滤条件）按照 EIP 名称过滤。不支持模糊过滤。
        /// - address-ip - String - 是否必填：否 - （过滤条件）按照 EIP 的 IP 地址过滤。
        /// - address-status - String - 是否必填：否 - （过滤条件）按照 EIP 的状态过滤。状态包含：'CREATING'，'BINDING'，'BIND'，'UNBINDING'，'UNBIND'，'OFFLINING'，'BIND_ENI'。
        /// - instance-id - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的实例 ID 过滤。实例 ID 形如：ins-11112222。
        /// - private-ip-address - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的内网 IP 过滤。
        /// - network-interface-id - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的弹性网卡 ID 过滤。弹性网卡 ID 形如：eni-11112222。
        /// - is-arrears - String - 是否必填：否 - （过滤条件）按照 EIP 是否欠费进行过滤。（TRUE：EIP 处于欠费状态|FALSE：EIP 费用状态正常）
        /// - address-type - String - 是否必填：否 - （过滤条件）按照 IP类型 进行过滤。可选值：'WanIP', 'EIP'，'AnycastEIP'，'HighQualityEIP'。默认值是'EIP'。
        /// - address-isp - String - 是否必填：否 - （过滤条件）按照 运营商类型 进行过滤。可选值：'BGP'，'CMCC'，'CUCC', 'CTCC'
        /// - dedicated-cluster-id - String - 是否必填：否 - （过滤条件）按照 CDC 的唯一 ID 过滤。CDC 唯一 ID 形如：cluster-11112222。
        /// - tag-key - String - 是否必填：否 - （过滤条件）按照标签键进行过滤。
        /// - tag-value - String - 是否必填：否 - （过滤条件）按照标签值进行过滤。
        /// - tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。tag-key使用具体的标签键进行替换。
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API 中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API 中的相关小节。
        public let limit: Int64?

        public init(addressIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.addressIds = addressIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case addressIds = "AddressIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAddressesResponse) -> DescribeAddressesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAddressesRequest(addressIds: self.addressIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAddresses返回参数结构体
    public struct DescribeAddressesResponse: TCPaginatedResponse {
        /// 符合条件的 EIP 数量。
        public let totalCount: Int64

        /// EIP 详细信息列表。
        public let addressSet: [Address]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case addressSet = "AddressSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Address`` list from the paginated response.
        public func getItems() -> [Address] {
            self.addressSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询弹性公网IP列表
    ///
    /// 本接口 (DescribeAddresses) 用于查询一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的详细信息。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的 EIP。
    @inlinable
    public func describeAddresses(_ input: DescribeAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAddressesResponse> {
        self.client.execute(action: "DescribeAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询弹性公网IP列表
    ///
    /// 本接口 (DescribeAddresses) 用于查询一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的详细信息。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的 EIP。
    @inlinable
    public func describeAddresses(_ input: DescribeAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressesResponse {
        try await self.client.execute(action: "DescribeAddresses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询弹性公网IP列表
    ///
    /// 本接口 (DescribeAddresses) 用于查询一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的详细信息。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的 EIP。
    @inlinable
    public func describeAddresses(addressIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAddressesResponse> {
        self.describeAddresses(.init(addressIds: addressIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询弹性公网IP列表
    ///
    /// 本接口 (DescribeAddresses) 用于查询一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的详细信息。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的 EIP。
    @inlinable
    public func describeAddresses(addressIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressesResponse {
        try await self.describeAddresses(.init(addressIds: addressIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询弹性公网IP列表
    ///
    /// 本接口 (DescribeAddresses) 用于查询一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的详细信息。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的 EIP。
    @inlinable
    public func describeAddressesPaginated(_ input: DescribeAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Address])> {
        self.client.paginate(input: input, region: region, command: self.describeAddresses, logger: logger, on: eventLoop)
    }

    /// 查询弹性公网IP列表
    ///
    /// 本接口 (DescribeAddresses) 用于查询一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的详细信息。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的 EIP。
    @inlinable @discardableResult
    public func describeAddressesPaginated(_ input: DescribeAddressesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAddressesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAddresses, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询弹性公网IP列表
    ///
    /// 本接口 (DescribeAddresses) 用于查询一个或多个[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)（简称 EIP）的详细信息。
    /// * 如果参数为空，返回当前用户一定数量（Limit所指定的数量，默认为20）的 EIP。
    ///
    /// - Returns: `AsyncSequence`s of ``Address`` and ``DescribeAddressesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAddressesPaginator(_ input: DescribeAddressesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAddressesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAddresses, logger: logger, on: eventLoop)
    }
}
