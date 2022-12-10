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

extension Tcr {
    /// 校验实例信息
    ///
    /// 用于校验企业版实例信息
    @inlinable
    public func checkInstance(_ input: CheckInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckInstanceResponse > {
        self.client.execute(action: "CheckInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 校验实例信息
    ///
    /// 用于校验企业版实例信息
    @inlinable
    public func checkInstance(_ input: CheckInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckInstanceResponse {
        try await self.client.execute(action: "CheckInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CheckInstance请求参数结构体
    public struct CheckInstanceRequest: TCRequestModel {
        /// 待检测的实例Id
        public let registryId: String
        
        public init (registryId: String) {
            self.registryId = registryId
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
        }
    }
    
    /// CheckInstance返回参数结构体
    public struct CheckInstanceResponse: TCResponseModel {
        /// 检查结果，true为合法，false为非法
        public let isValidated: Bool
        
        /// 实例所在的RegionId
        public let regionId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case isValidated = "IsValidated"
            case regionId = "RegionId"
            case requestId = "RequestId"
        }
    }
}