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

extension Mariadb {
    /// 查询云数据库可售卖地域和可用区信息
    ///
    /// 本接口(DescribeSaleInfo)用于查询云数据库可售卖的地域和可用区信息。
    @inlinable
    public func describeSaleInfo(_ input: DescribeSaleInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSaleInfoResponse > {
        self.client.execute(action: "DescribeSaleInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询云数据库可售卖地域和可用区信息
    ///
    /// 本接口(DescribeSaleInfo)用于查询云数据库可售卖的地域和可用区信息。
    @inlinable
    public func describeSaleInfo(_ input: DescribeSaleInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSaleInfoResponse {
        try await self.client.execute(action: "DescribeSaleInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSaleInfo请求参数结构体
    public struct DescribeSaleInfoRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeSaleInfo返回参数结构体
    public struct DescribeSaleInfoResponse: TCResponseModel {
        /// 可售卖地域信息列表
        public let regionList: [RegionInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case regionList = "RegionList"
            case requestId = "RequestId"
        }
    }
}
