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

extension Dcdb {
    /// ModifyRealServerAccessStrategy请求参数结构体
    public struct ModifyRealServerAccessStrategyRequest: TCRequestModel {
        /// 实例 ID，格式如：tdsqlshard-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String
        
        /// RS就近模式, 0-无策略, 1-可用区就近访问。
        public let rsAccessStrategy: Int64
        
        public init (instanceId: String, rsAccessStrategy: Int64) {
            self.instanceId = instanceId
            self.rsAccessStrategy = rsAccessStrategy
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case rsAccessStrategy = "RsAccessStrategy"
        }
    }
    
    /// ModifyRealServerAccessStrategy返回参数结构体
    public struct ModifyRealServerAccessStrategyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改RS的访问策略
    ///
    /// 本接口(ModifyRealServerAccessStrategy)用于修改云数据库的VPCGW到RS的访问策略。
    /// **注意**
    /// - 修改策略后只对新建立的连接生效，老连接不受影响
    /// - 就近访问只针对实例是跨可用区部署有用，单可用区部署实例就近与否并无作用
    /// - DB每个Node对应一个proxy，如果开启就近访问，将会把连接集中到对应可用区的proxy上，可能造成热点问题，这种情况下如果是线上业务，请务必根据自己的业务请求量测试符合预期后再进行就近策略变更
    @inlinable
    public func modifyRealServerAccessStrategy(_ input: ModifyRealServerAccessStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRealServerAccessStrategyResponse > {
        self.client.execute(action: "ModifyRealServerAccessStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改RS的访问策略
    ///
    /// 本接口(ModifyRealServerAccessStrategy)用于修改云数据库的VPCGW到RS的访问策略。
    /// **注意**
    /// - 修改策略后只对新建立的连接生效，老连接不受影响
    /// - 就近访问只针对实例是跨可用区部署有用，单可用区部署实例就近与否并无作用
    /// - DB每个Node对应一个proxy，如果开启就近访问，将会把连接集中到对应可用区的proxy上，可能造成热点问题，这种情况下如果是线上业务，请务必根据自己的业务请求量测试符合预期后再进行就近策略变更
    @inlinable
    public func modifyRealServerAccessStrategy(_ input: ModifyRealServerAccessStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRealServerAccessStrategyResponse {
        try await self.client.execute(action: "ModifyRealServerAccessStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
