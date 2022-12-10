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

extension Faceid {
    /// 获取数字验证码
    ///
    /// 使用数字活体检测模式前，需调用本接口获取数字验证码。
    @inlinable
    public func getLiveCode(_ input: GetLiveCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetLiveCodeResponse > {
        self.client.execute(action: "GetLiveCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取数字验证码
    ///
    /// 使用数字活体检测模式前，需调用本接口获取数字验证码。
    @inlinable
    public func getLiveCode(_ input: GetLiveCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetLiveCodeResponse {
        try await self.client.execute(action: "GetLiveCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetLiveCode请求参数结构体
    public struct GetLiveCodeRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// GetLiveCode返回参数结构体
    public struct GetLiveCodeResponse: TCResponseModel {
        /// 数字验证码，如：1234
        public let liveCode: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case liveCode = "LiveCode"
            case requestId = "RequestId"
        }
    }
}