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

extension Dayu {
    /// DescribeIPProductInfo请求参数结构体
    public struct DescribeIPProductInfoRequest: TCRequestModel {
        /// 大禹子产品代号（bgp表示独享包；bgp-multip表示共享包）
        public let business: String
        
        /// IP列表
        public let ipList: [String]
        
        public init (business: String, ipList: [String]) {
            self.business = business
            self.ipList = ipList
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case ipList = "IpList"
        }
    }
    
    /// DescribeIPProductInfo返回参数结构体
    public struct DescribeIPProductInfoResponse: TCResponseModel {
        /// 云产品信息列表，如果没有查询到则返回空数组，值说明如下：
        /// Key为ProductName时，value表示云产品实例的名称；
        /// Key为ProductInstanceId时，value表示云产品实例的ID；
        /// Key为ProductType时，value表示的是云产品的类型（cvm表示云主机、clb表示负载均衡）;
        /// Key为IP时，value表示云产品实例的IP；
        public let data: [KeyValueRecord]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 获取独享包或共享包IP对应的云资产信息
    ///
    /// 获取独享包或共享包IP对应的云资产信息，只支持独享包和共享包的IP
    @inlinable
    public func describeIPProductInfo(_ input: DescribeIPProductInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeIPProductInfoResponse > {
        self.client.execute(action: "DescribeIPProductInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取独享包或共享包IP对应的云资产信息
    ///
    /// 获取独享包或共享包IP对应的云资产信息，只支持独享包和共享包的IP
    @inlinable
    public func describeIPProductInfo(_ input: DescribeIPProductInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIPProductInfoResponse {
        try await self.client.execute(action: "DescribeIPProductInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
