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

extension Youmall {
    /// 查询设备最新网络状态
    ///
    /// 返回当前门店最新网络状态数据
    @inlinable
    public func describeNetworkInfo(_ input: DescribeNetworkInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNetworkInfoResponse > {
        self.client.execute(action: "DescribeNetworkInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询设备最新网络状态
    ///
    /// 返回当前门店最新网络状态数据
    @inlinable
    public func describeNetworkInfo(_ input: DescribeNetworkInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkInfoResponse {
        try await self.client.execute(action: "DescribeNetworkInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeNetworkInfo请求参数结构体
    public struct DescribeNetworkInfoRequest: TCRequestModel {
        /// 请求时间戳
        public let time: Int64
        
        /// 优mall集团id，通过"指定身份标识获取客户门店列表"接口获取
        public let companyId: String
        
        /// 优mall店铺id，通过"指定身份标识获取客户门店列表"接口获取，不填则拉取集团全部店铺当前
        public let shopId: Int64?
        
        public init (time: Int64, companyId: String, shopId: Int64?) {
            self.time = time
            self.companyId = companyId
            self.shopId = shopId
        }
        
        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case companyId = "CompanyId"
            case shopId = "ShopId"
        }
    }
    
    /// DescribeNetworkInfo返回参数结构体
    public struct DescribeNetworkInfoResponse: TCResponseModel {
        /// 网络状态详情
        public let instanceSet: NetworkLastInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }
    }
}
