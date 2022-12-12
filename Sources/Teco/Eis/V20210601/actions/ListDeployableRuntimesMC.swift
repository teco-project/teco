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

@_exported import struct Foundation.Date

extension Eis {
    /// ListDeployableRuntimesMC请求参数结构体
    public struct ListDeployableRuntimesMCRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// ListDeployableRuntimesMC返回参数结构体
    public struct ListDeployableRuntimesMCResponse: TCResponseModel {
        /// 运行时列表
        public let runtimes: [AbstractRuntimeMC]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case runtimes = "Runtimes"
            case requestId = "RequestId"
        }
    }
    
    /// 获取可部署运行时列表
    ///
    /// 返回用户可用的运行时列表，发布应用时返回的运行时环境，仅shared和private运行时，无sandbox运行时，并且只有running/scaling状态的
    @inlinable
    public func listDeployableRuntimesMC(_ input: ListDeployableRuntimesMCRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListDeployableRuntimesMCResponse > {
        self.client.execute(action: "ListDeployableRuntimesMC", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取可部署运行时列表
    ///
    /// 返回用户可用的运行时列表，发布应用时返回的运行时环境，仅shared和private运行时，无sandbox运行时，并且只有running/scaling状态的
    @inlinable
    public func listDeployableRuntimesMC(_ input: ListDeployableRuntimesMCRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListDeployableRuntimesMCResponse {
        try await self.client.execute(action: "ListDeployableRuntimesMC", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
