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

extension Tsw {
    /// DescribeAgentShell请求参数结构体
    public struct DescribeAgentShellRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeAgentShell返回参数结构体
    public struct DescribeAgentShellResponse: TCResponseModel {
        /// 接入信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: AgentShell?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 获取服务接入信息
    @inlinable
    public func describeAgentShell(_ input: DescribeAgentShellRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAgentShellResponse > {
        self.client.execute(action: "DescribeAgentShell", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取服务接入信息
    @inlinable
    public func describeAgentShell(_ input: DescribeAgentShellRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentShellResponse {
        try await self.client.execute(action: "DescribeAgentShell", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
