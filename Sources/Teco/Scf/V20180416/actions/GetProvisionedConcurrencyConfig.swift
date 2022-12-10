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

extension Scf {
    /// 获取函数预置并发详情
    ///
    /// 获取函数或函数某一版本的预置并发详情。
    @inlinable
    public func getProvisionedConcurrencyConfig(_ input: GetProvisionedConcurrencyConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetProvisionedConcurrencyConfigResponse > {
        self.client.execute(action: "GetProvisionedConcurrencyConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取函数预置并发详情
    ///
    /// 获取函数或函数某一版本的预置并发详情。
    @inlinable
    public func getProvisionedConcurrencyConfig(_ input: GetProvisionedConcurrencyConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetProvisionedConcurrencyConfigResponse {
        try await self.client.execute(action: "GetProvisionedConcurrencyConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetProvisionedConcurrencyConfig请求参数结构体
    public struct GetProvisionedConcurrencyConfigRequest: TCRequestModel {
        /// 需要获取预置并发详情的函数名称。
        public let functionName: String
        
        /// 函数所在的命名空间，默认为default。
        public let namespace: String?
        
        /// 函数版本号，不传则返回函数所有版本的预置并发信息。
        public let qualifier: String?
        
        public init (functionName: String, namespace: String?, qualifier: String?) {
            self.functionName = functionName
            self.namespace = namespace
            self.qualifier = qualifier
        }
        
        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case namespace = "Namespace"
            case qualifier = "Qualifier"
        }
    }
    
    /// GetProvisionedConcurrencyConfig返回参数结构体
    public struct GetProvisionedConcurrencyConfigResponse: TCResponseModel {
        /// 该函数剩余可配置的预置并发数。
        public let unallocatedConcurrencyNum: UInt64
        
        /// 函数已预置的并发配置详情。
        public let allocated: [VersionProvisionedConcurrencyInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case unallocatedConcurrencyNum = "UnallocatedConcurrencyNum"
            case allocated = "Allocated"
            case requestId = "RequestId"
        }
    }
}