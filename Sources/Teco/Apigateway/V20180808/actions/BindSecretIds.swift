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

extension Apigateway {
    /// 使用计划绑定密钥
    ///
    /// 本接口（BindSecretIds）用于为使用计划绑定密钥。
    /// 将密钥绑定到某个使用计划，并将此使用计划绑定到某个服务发布的环境上，调用者方可使用此密钥调用这个服务中的 API，可使用本接口为使用计划绑定密钥。
    @inlinable
    public func bindSecretIds(_ input: BindSecretIdsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BindSecretIdsResponse > {
        self.client.execute(action: "BindSecretIds", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 使用计划绑定密钥
    ///
    /// 本接口（BindSecretIds）用于为使用计划绑定密钥。
    /// 将密钥绑定到某个使用计划，并将此使用计划绑定到某个服务发布的环境上，调用者方可使用此密钥调用这个服务中的 API，可使用本接口为使用计划绑定密钥。
    @inlinable
    public func bindSecretIds(_ input: BindSecretIdsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindSecretIdsResponse {
        try await self.client.execute(action: "BindSecretIds", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// BindSecretIds请求参数结构体
    public struct BindSecretIdsRequest: TCRequestModel {
        /// 待绑定的使用计划唯一 ID。
        public let usagePlanId: String
        
        /// 待绑定的密钥 ID 数组。
        public let accessKeyIds: [String]
        
        public init (usagePlanId: String, accessKeyIds: [String]) {
            self.usagePlanId = usagePlanId
            self.accessKeyIds = accessKeyIds
        }
        
        enum CodingKeys: String, CodingKey {
            case usagePlanId = "UsagePlanId"
            case accessKeyIds = "AccessKeyIds"
        }
    }
    
    /// BindSecretIds返回参数结构体
    public struct BindSecretIdsResponse: TCResponseModel {
        /// 绑定操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
