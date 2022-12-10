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

extension Wav {
    /// 外部联系人转换接口
    ///
    /// 企业可通过此接口将企业主体对应的外部联系人id转换为乐销车应用主体对应的外部联系人。
    @inlinable
    public func queryExternalUserMappingInfo(_ input: QueryExternalUserMappingInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryExternalUserMappingInfoResponse > {
        self.client.execute(action: "QueryExternalUserMappingInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 外部联系人转换接口
    ///
    /// 企业可通过此接口将企业主体对应的外部联系人id转换为乐销车应用主体对应的外部联系人。
    @inlinable
    public func queryExternalUserMappingInfo(_ input: QueryExternalUserMappingInfoRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryExternalUserMappingInfoResponse {
        try await self.client.execute(action: "QueryExternalUserMappingInfo", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryExternalUserMappingInfo请求参数结构体
    public struct QueryExternalUserMappingInfoRequest: TCRequestModel {
        /// 企业主体对应的外部联系人id列表，列表长度限制最大为50。
        public let corpExternalUserIdList: [String]
        
        public init (corpExternalUserIdList: [String]) {
            self.corpExternalUserIdList = corpExternalUserIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case corpExternalUserIdList = "CorpExternalUserIdList"
        }
    }
    
    /// QueryExternalUserMappingInfo返回参数结构体
    public struct QueryExternalUserMappingInfoResponse: TCResponseModel {
        /// 外部联系人映射信息, 只返回映射成功的记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let externalUserIdMapping: [ExternalUserMappingInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case externalUserIdMapping = "ExternalUserIdMapping"
            case requestId = "RequestId"
        }
    }
}