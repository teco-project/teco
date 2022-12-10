//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ecm {
    /// 查询弹性网卡列表
    ///
    /// 查询弹性网卡列表
    @inlinable
    public func describeNetworkInterfaces(_ input: DescribeNetworkInterfacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNetworkInterfacesResponse > {
        self.client.execute(action: "DescribeNetworkInterfaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询弹性网卡列表
    ///
    /// 查询弹性网卡列表
    @inlinable
    public func describeNetworkInterfaces(_ input: DescribeNetworkInterfacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkInterfacesResponse {
        try await self.client.execute(action: "DescribeNetworkInterfaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeNetworkInterfaces请求参数结构体
    public struct DescribeNetworkInterfacesRequest: TCRequestModel {
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
        
        public init (networkInterfaceIds: [String]?, filters: [Filter]?, offset: UInt64?, limit: UInt64?, ecmRegion: String?) {
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
    }
    
    /// DescribeNetworkInterfaces返回参数结构体
    public struct DescribeNetworkInterfacesResponse: TCResponseModel {
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
    }
}