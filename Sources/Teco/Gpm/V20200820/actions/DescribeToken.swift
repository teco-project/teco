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

extension Gpm {
    /// DescribeToken请求参数结构体
    public struct DescribeTokenRequest: TCRequestModel {
        /// 匹配code
        public let matchCode: String
        
        public init (matchCode: String) {
            self.matchCode = matchCode
        }
        
        enum CodingKeys: String, CodingKey {
            case matchCode = "MatchCode"
        }
    }
    
    /// DescribeToken返回参数结构体
    public struct DescribeTokenResponse: TCResponseModel {
        /// 当前的MatchCode对应的Token。如果当前MatchCode没有Token，该参数可能取不到有效值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let matchToken: String?
        
        /// 当Token被替换后，GPM将兼容推送原始Token的时间（秒）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let compatibleSpan: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case matchToken = "MatchToken"
            case compatibleSpan = "CompatibleSpan"
            case requestId = "RequestId"
        }
    }
    
    /// 查询匹配Token
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 查询匹配Token，Token用于push消息验证。
    @inlinable
    public func describeToken(_ input: DescribeTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTokenResponse > {
        self.client.execute(action: "DescribeToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询匹配Token
    ///
    /// 此接口无法使用，游戏玩家匹配GPM已于6.1正式下架，感谢您的支持
    /// 查询匹配Token，Token用于push消息验证。
    @inlinable
    public func describeToken(_ input: DescribeTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTokenResponse {
        try await self.client.execute(action: "DescribeToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
