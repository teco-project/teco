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

extension Cvm {
    /// RemoveChcAssistVpc请求参数结构体
    public struct RemoveChcAssistVpcRequest: TCRequestModel {
        /// CHC物理服务器Id。
        public let chcIds: [String]
        
        public init (chcIds: [String]) {
            self.chcIds = chcIds
        }
        
        enum CodingKeys: String, CodingKey {
            case chcIds = "ChcIds"
        }
    }
    
    /// RemoveChcAssistVpc返回参数结构体
    public struct RemoveChcAssistVpcResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 清理CHC物理服务器的带外网络和部署网络
    @inlinable
    public func removeChcAssistVpc(_ input: RemoveChcAssistVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RemoveChcAssistVpcResponse > {
        self.client.execute(action: "RemoveChcAssistVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 清理CHC物理服务器的带外网络和部署网络
    @inlinable
    public func removeChcAssistVpc(_ input: RemoveChcAssistVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveChcAssistVpcResponse {
        try await self.client.execute(action: "RemoveChcAssistVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
