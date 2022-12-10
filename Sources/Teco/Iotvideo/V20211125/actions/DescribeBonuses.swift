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

extension Iotvideo {
    /// 查看运营活动资源包列表
    ///
    /// 查看运营活动资源包列表
    @inlinable
    public func describeBonuses(_ input: DescribeBonusesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBonusesResponse > {
        self.client.execute(action: "DescribeBonuses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查看运营活动资源包列表
    ///
    /// 查看运营活动资源包列表
    @inlinable
    public func describeBonuses(_ input: DescribeBonusesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBonusesResponse {
        try await self.client.execute(action: "DescribeBonuses", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBonuses请求参数结构体
    public struct DescribeBonusesRequest: TCRequestModel {
        /// 分页拉取偏移
        public let offset: UInt64
        
        /// 分页拉取数量
        public let limit: UInt64
        
        public init (offset: UInt64, limit: UInt64) {
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeBonuses返回参数结构体
    public struct DescribeBonusesResponse: TCResponseModel {
        /// 资源包总数
        public let totalCount: UInt64
        
        /// 资源包信息
        public let bonuses: [BonusInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case bonuses = "Bonuses"
            case requestId = "RequestId"
        }
    }
}