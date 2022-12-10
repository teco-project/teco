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

extension Vpc {
    /// 云联网解关联实例
    ///
    /// 本接口（DetachCcnInstances）用于从云联网实例中解关联指定的网络实例。<br />
    /// 解关联网络实例后，相应的路由策略会一并删除。
    @inlinable
    public func detachCcnInstances(_ input: DetachCcnInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DetachCcnInstancesResponse > {
        self.client.execute(action: "DetachCcnInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云联网解关联实例
    ///
    /// 本接口（DetachCcnInstances）用于从云联网实例中解关联指定的网络实例。<br />
    /// 解关联网络实例后，相应的路由策略会一并删除。
    @inlinable
    public func detachCcnInstances(_ input: DetachCcnInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachCcnInstancesResponse {
        try await self.client.execute(action: "DetachCcnInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DetachCcnInstances请求参数结构体
    public struct DetachCcnInstancesRequest: TCRequestModel {
        /// CCN实例ID。形如：ccn-f49l6u0z。
        public let ccnId: String
        
        /// 要解关联网络实例列表
        public let instances: [CcnInstance]
        
        public init (ccnId: String, instances: [CcnInstance]) {
            self.ccnId = ccnId
            self.instances = instances
        }
        
        enum CodingKeys: String, CodingKey {
            case ccnId = "CcnId"
            case instances = "Instances"
        }
    }
    
    /// DetachCcnInstances返回参数结构体
    public struct DetachCcnInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}