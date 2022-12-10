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

extension Ecm {
    /// 查询弹性公网IP列表
    @inlinable
    public func describeAddresses(_ input: DescribeAddressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAddressesResponse > {
        self.client.execute(action: "DescribeAddresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询弹性公网IP列表
    @inlinable
    public func describeAddresses(_ input: DescribeAddressesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAddressesResponse {
        try await self.client.execute(action: "DescribeAddresses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAddresses请求参数结构体
    public struct DescribeAddressesRequest: TCRequestModel {
        /// ECM 地域
        public let ecmRegion: String
        
        /// 标识 EIP 的唯一 ID 列表。EIP 唯一 ID 形如：eip-11112222。参数不支持同时指定AddressIds和Filters。
        public let addressIds: [String]?
        
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定AddressIds和Filters。详细的过滤条件如下：
        /// address-id - String - 是否必填：否 - （过滤条件）按照 EIP 的唯一 ID 过滤。EIP 唯一 ID 形如：eip-11112222。
        /// address-name - String - 是否必填：否 - （过滤条件）按照 EIP 名称过滤。不支持模糊过滤。
        /// address-ip - String - 是否必填：否 - （过滤条件）按照 EIP 的 IP 地址过滤。
        /// address-status - String - 是否必填：否 - （过滤条件）按照 EIP 的状态过滤。取值范围：详见EIP状态列表。
        /// instance-id - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的实例 ID 过滤。实例 ID 形如：ins-11112222。
        /// private-ip-address - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的内网 IP 过滤。
        /// network-interface-id - String - 是否必填：否 - （过滤条件）按照 EIP 绑定的弹性网卡 ID 过滤。弹性网卡 ID 形如：eni-11112222。
        /// is-arrears - String - 是否必填：否 - （过滤条件）按照 EIP 是否欠费进行过滤。（TRUE：EIP 处于欠费状态|FALSE：EIP 费用状态正常）
        public let filters: [Filter]?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?
        
        public init (ecmRegion: String, addressIds: [String]?, filters: [Filter]?, offset: UInt64?, limit: UInt64?) {
            self.ecmRegion = ecmRegion
            self.addressIds = addressIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case ecmRegion = "EcmRegion"
            case addressIds = "AddressIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeAddresses返回参数结构体
    public struct DescribeAddressesResponse: TCResponseModel {
        /// 符合条件的 EIP 数量。
        public let totalCount: UInt64
        
        /// EIP 详细信息列表。
        public let addressSet: [Address]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case addressSet = "AddressSet"
            case requestId = "RequestId"
        }
    }
}
