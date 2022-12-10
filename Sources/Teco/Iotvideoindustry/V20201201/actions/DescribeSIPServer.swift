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

extension Iotvideoindustry {
    /// 获取SIP服务器配置
    ///
    /// 本接口用于获取SIP服务器相关配置，用户可以通过这些配置项，将设备通过GB28181协议注册到本服务。
    @inlinable
    public func describeSIPServer(_ input: DescribeSIPServerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSIPServerResponse > {
        self.client.execute(action: "DescribeSIPServer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取SIP服务器配置
    ///
    /// 本接口用于获取SIP服务器相关配置，用户可以通过这些配置项，将设备通过GB28181协议注册到本服务。
    @inlinable
    public func describeSIPServer(_ input: DescribeSIPServerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSIPServerResponse {
        try await self.client.execute(action: "DescribeSIPServer", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSIPServer请求参数结构体
    public struct DescribeSIPServerRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeSIPServer返回参数结构体
    public struct DescribeSIPServerResponse: TCResponseModel {
        /// SIP服务器相关配置项
        public let data: ServerConfiguration
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}