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

extension Tms {
    /// DescribeTextLib请求参数结构体
    public struct DescribeTextLibRequest: TCRequestModel {
        /// 内容类型 text: 1; image: 2; audio: 3; video: 4
        public let strategyType: Int64

        public init(strategyType: Int64) {
            self.strategyType = strategyType
        }

        enum CodingKeys: String, CodingKey {
            case strategyType = "StrategyType"
        }
    }

    /// DescribeTextLib返回参数结构体
    public struct DescribeTextLibResponse: TCResponseModel {
        /// 文本库id和name列表
        public let textLib: [TextLib]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case textLib = "TextLib"
            case requestId = "RequestId"
        }
    }

    /// 获取用户词库列表
    ///
    /// 控制台获取用户词库列表
    @inlinable
    public func describeTextLib(_ input: DescribeTextLibRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTextLibResponse > {
        self.client.execute(action: "DescribeTextLib", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户词库列表
    ///
    /// 控制台获取用户词库列表
    @inlinable
    public func describeTextLib(_ input: DescribeTextLibRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTextLibResponse {
        try await self.client.execute(action: "DescribeTextLib", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户词库列表
    ///
    /// 控制台获取用户词库列表
    @inlinable
    public func describeTextLib(strategyType: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTextLibResponse > {
        self.describeTextLib(DescribeTextLibRequest(strategyType: strategyType), logger: logger, on: eventLoop)
    }

    /// 获取用户词库列表
    ///
    /// 控制台获取用户词库列表
    @inlinable
    public func describeTextLib(strategyType: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTextLibResponse {
        try await self.describeTextLib(DescribeTextLibRequest(strategyType: strategyType), logger: logger, on: eventLoop)
    }
}
