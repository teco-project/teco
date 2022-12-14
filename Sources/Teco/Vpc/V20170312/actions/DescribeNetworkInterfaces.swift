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

extension Vpc {
    /// DescribeNetworkInterfaces请求参数结构体
    public struct DescribeNetworkInterfacesRequest: TCRequestModel {
        /// 弹性网卡实例ID查询。形如：eni-pxir56ns。每次请求的实例的上限为100。参数不支持同时指定NetworkInterfaceIds和Filters。
        public let networkInterfaceIds: [String]?

        /// 过滤条件，参数不支持同时指定NetworkInterfaceIds和Filters。
        /// <li>vpc-id - String - （过滤条件）VPC实例ID，形如：vpc-f49l6u0z。</li>
        /// <li>subnet-id - String - （过滤条件）所属子网实例ID，形如：subnet-f49l6u0z。</li>
        /// <li>network-interface-id - String - （过滤条件）弹性网卡实例ID，形如：eni-5k56k7k7。</li>
        /// <li>attachment.instance-id - String - （过滤条件）绑定的云服务器实例ID，形如：ins-3nqpdn3i。</li>
        /// <li>groups.security-group-id - String - （过滤条件）绑定的安全组实例ID，例如：sg-f9ekbxeq。</li>
        /// <li>network-interface-name - String - （过滤条件）网卡实例名称。</li>
        /// <li>network-interface-description - String - （过滤条件）网卡实例描述。</li>
        /// <li>address-ip - String - （过滤条件）内网IPv4地址，单IP后缀模糊匹配，多IP精确匹配。可以与`ip-exact-match`配合做单IP的精确匹配查询。</li>
        /// <li>ip-exact-match - Boolean - （过滤条件）内网IPv4精确匹配查询，存在多值情况，只取第一个。</li>
        /// <li>tag-key - String -是否必填：否- （过滤条件）按照标签键进行过滤。使用请参考示例2</li>
        /// <li>tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。使用请参考示例2。</li>
        /// <li>is-primary - Boolean - 是否必填：否 - （过滤条件）按照是否主网卡进行过滤。值为true时，仅过滤主网卡；值为false时，仅过滤辅助网卡；此过滤参数未提供时，同时过滤主网卡和辅助网卡。</li>
        /// <li>eni-type - String -是否必填：否- （过滤条件）按照网卡类型进行过滤。“0”-辅助网卡，“1”-主网卡，“2”：中继网卡</li>
        /// <li>eni-qos - String -是否必填：否- （过滤条件）按照网卡服务质量进行过滤。“AG”-服务质量云铜，“AU”-服务质量为银</li>
        /// <li>address-ipv6 - String - 是否必填：否 -（过滤条件）内网IPv6地址过滤，支持多ipv6地址查询，如果和address-ip一起使用取交集。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        public init(networkInterfaceIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.networkInterfaceIds = networkInterfaceIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case networkInterfaceIds = "NetworkInterfaceIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeNetworkInterfaces返回参数结构体
    public struct DescribeNetworkInterfacesResponse: TCResponseModel {
        /// 实例详细信息列表。
        public let networkInterfaceSet: [NetworkInterface]

        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case networkInterfaceSet = "NetworkInterfaceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询弹性网卡列表
    ///
    /// 本接口（DescribeNetworkInterfaces）用于查询弹性网卡列表。
    @inlinable
    public func describeNetworkInterfaces(_ input: DescribeNetworkInterfacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNetworkInterfacesResponse > {
        self.client.execute(action: "DescribeNetworkInterfaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询弹性网卡列表
    ///
    /// 本接口（DescribeNetworkInterfaces）用于查询弹性网卡列表。
    @inlinable
    public func describeNetworkInterfaces(_ input: DescribeNetworkInterfacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkInterfacesResponse {
        try await self.client.execute(action: "DescribeNetworkInterfaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询弹性网卡列表
    ///
    /// 本接口（DescribeNetworkInterfaces）用于查询弹性网卡列表。
    @inlinable
    public func describeNetworkInterfaces(networkInterfaceIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNetworkInterfacesResponse > {
        self.describeNetworkInterfaces(DescribeNetworkInterfacesRequest(networkInterfaceIds: networkInterfaceIds, filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询弹性网卡列表
    ///
    /// 本接口（DescribeNetworkInterfaces）用于查询弹性网卡列表。
    @inlinable
    public func describeNetworkInterfaces(networkInterfaceIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkInterfacesResponse {
        try await self.describeNetworkInterfaces(DescribeNetworkInterfacesRequest(networkInterfaceIds: networkInterfaceIds, filters: filters, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
