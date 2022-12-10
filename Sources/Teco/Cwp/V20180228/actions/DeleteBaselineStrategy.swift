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

extension Cwp {
    /// 删除基线策略
    ///
    /// 根据基线策略id删除策略
    @inlinable
    public func deleteBaselineStrategy(_ input: DeleteBaselineStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteBaselineStrategyResponse > {
        self.client.execute(action: "DeleteBaselineStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除基线策略
    ///
    /// 根据基线策略id删除策略
    @inlinable
    public func deleteBaselineStrategy(_ input: DeleteBaselineStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBaselineStrategyResponse {
        try await self.client.execute(action: "DeleteBaselineStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteBaselineStrategy请求参数结构体
    public struct DeleteBaselineStrategyRequest: TCRequestModel {
        /// 基线策略id
        public let strategyId: UInt64
        
        public init (strategyId: UInt64) {
            self.strategyId = strategyId
        }
        
        enum CodingKeys: String, CodingKey {
            case strategyId = "StrategyId"
        }
    }
    
    /// DeleteBaselineStrategy返回参数结构体
    public struct DeleteBaselineStrategyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}