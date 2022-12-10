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
    /// 运行时反弹shell白名单详细信息
    ///
    /// 查询运行时反弹shell白名单详细信息
    @inlinable
    public func describeReverseShellWhiteListDetail(_ input: DescribeReverseShellWhiteListDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeReverseShellWhiteListDetailResponse > {
        self.client.execute(action: "DescribeReverseShellWhiteListDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 运行时反弹shell白名单详细信息
    ///
    /// 查询运行时反弹shell白名单详细信息
    @inlinable
    public func describeReverseShellWhiteListDetail(_ input: DescribeReverseShellWhiteListDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellWhiteListDetailResponse {
        try await self.client.execute(action: "DescribeReverseShellWhiteListDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeReverseShellWhiteListDetail请求参数结构体
    public struct DescribeReverseShellWhiteListDetailRequest: TCRequestModel {
        /// 白名单id
        public let whiteListId: String
        
        public init (whiteListId: String) {
            self.whiteListId = whiteListId
        }
        
        enum CodingKeys: String, CodingKey {
            case whiteListId = "WhiteListId"
        }
    }
    
    /// DescribeReverseShellWhiteListDetail返回参数结构体
    public struct DescribeReverseShellWhiteListDetailResponse: TCResponseModel {
        /// 事件基本信息
        public let whiteListDetailInfo: ReverseShellWhiteListInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case whiteListDetailInfo = "WhiteListDetailInfo"
            case requestId = "RequestId"
        }
    }
}
