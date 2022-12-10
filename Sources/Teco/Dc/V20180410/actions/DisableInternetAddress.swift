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

extension Dc {
    /// 停用公网互联网地址
    ///
    /// 停用用户申请的公网互联网地址
    @inlinable
    public func disableInternetAddress(_ input: DisableInternetAddressRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableInternetAddressResponse > {
        self.client.execute(action: "DisableInternetAddress", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 停用公网互联网地址
    ///
    /// 停用用户申请的公网互联网地址
    @inlinable
    public func disableInternetAddress(_ input: DisableInternetAddressRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableInternetAddressResponse {
        try await self.client.execute(action: "DisableInternetAddress", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DisableInternetAddress请求参数结构体
    public struct DisableInternetAddressRequest: TCRequestModel {
        /// 公网互联网地址ID
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DisableInternetAddress返回参数结构体
    public struct DisableInternetAddressResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
