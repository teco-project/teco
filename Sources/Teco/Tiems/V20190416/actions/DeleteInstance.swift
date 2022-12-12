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

extension Tiems {
    /// DeleteInstance请求参数结构体
    public struct DeleteInstanceRequest: TCRequestModel {
        /// 要删除的节点 ID
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DeleteInstance返回参数结构体
    public struct DeleteInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除节点
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除资源组中的节点。目前仅支持删除已经到期的预付费节点，和按量付费节点。
    @inlinable
    public func deleteInstance(_ input: DeleteInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteInstanceResponse > {
        self.client.execute(action: "DeleteInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除节点
    ///
    /// 因业务策略调整，腾讯云TI平台TI-EMS已经于2022年6月30日下线并停止提供服务。若您有新增的业务需求，可前往TI-ONE(https://cloud.tencent.com/document/product/851)使用。
    /// 删除资源组中的节点。目前仅支持删除已经到期的预付费节点，和按量付费节点。
    @inlinable
    public func deleteInstance(_ input: DeleteInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceResponse {
        try await self.client.execute(action: "DeleteInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
