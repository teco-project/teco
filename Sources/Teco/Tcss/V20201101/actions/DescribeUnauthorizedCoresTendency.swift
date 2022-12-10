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

extension Tcss {
    /// 查询当天未授权核数趋势
    @inlinable
    public func describeUnauthorizedCoresTendency(_ input: DescribeUnauthorizedCoresTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUnauthorizedCoresTendencyResponse > {
        self.client.execute(action: "DescribeUnauthorizedCoresTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询当天未授权核数趋势
    @inlinable
    public func describeUnauthorizedCoresTendency(_ input: DescribeUnauthorizedCoresTendencyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUnauthorizedCoresTendencyResponse {
        try await self.client.execute(action: "DescribeUnauthorizedCoresTendency", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeUnauthorizedCoresTendency请求参数结构体
    public struct DescribeUnauthorizedCoresTendencyRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeUnauthorizedCoresTendency返回参数结构体
    public struct DescribeUnauthorizedCoresTendencyResponse: TCResponseModel {
        /// 未授权核数趋势
        public let list: [UnauthorizedCoresTendency]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case list = "List"
            case requestId = "RequestId"
        }
    }
}
