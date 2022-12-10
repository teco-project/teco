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

extension Ic {
    /// 查询卡片列表
    ///
    /// 查询卡片列表信息
    @inlinable
    public func describeCards(_ input: DescribeCardsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCardsResponse > {
        self.client.execute(action: "DescribeCards", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询卡片列表
    ///
    /// 查询卡片列表信息
    @inlinable
    public func describeCards(_ input: DescribeCardsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCardsResponse {
        try await self.client.execute(action: "DescribeCards", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCards请求参数结构体
    public struct DescribeCardsRequest: TCRequestModel {
        /// 应用ID
        public let sdkappid: String
        
        /// 偏移值
        public let offset: Int64
        
        /// 列表限制
        public let limit: Int64
        
        public init (sdkappid: String, offset: Int64, limit: Int64) {
            self.sdkappid = sdkappid
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkappid = "Sdkappid"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeCards返回参数结构体
    public struct DescribeCardsResponse: TCResponseModel {
        /// 卡片列表信息
        public let data: CardList
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}