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

extension Tcss {
    /// 获取告警策略列表
    ///
    /// 获取告警策略列表
    @inlinable
    public func describeWarningRules(_ input: DescribeWarningRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWarningRulesResponse > {
        self.client.execute(action: "DescribeWarningRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取告警策略列表
    ///
    /// 获取告警策略列表
    @inlinable
    public func describeWarningRules(_ input: DescribeWarningRulesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWarningRulesResponse {
        try await self.client.execute(action: "DescribeWarningRules", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWarningRules请求参数结构体
    public struct DescribeWarningRulesRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeWarningRules返回参数结构体
    public struct DescribeWarningRulesResponse: TCResponseModel {
        /// 告警策略列表
        public let warningRules: [WarningRule]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case warningRules = "WarningRules"
            case requestId = "RequestId"
        }
    }
}