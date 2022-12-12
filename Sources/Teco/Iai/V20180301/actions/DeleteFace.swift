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

extension Iai {
    /// DeleteFace请求参数结构体
    public struct DeleteFaceRequest: TCRequestModel {
        /// 人员ID
        public let personId: String
        
        /// 待删除的人脸ID列表
        public let faceIds: [String]
        
        public init (personId: String, faceIds: [String]) {
            self.personId = personId
            self.faceIds = faceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case faceIds = "FaceIds"
        }
    }
    
    /// DeleteFace返回参数结构体
    public struct DeleteFaceResponse: TCResponseModel {
        /// 删除成功的人脸数量
        public let sucDeletedNum: UInt64
        
        /// 删除成功的人脸ID列表
        public let sucFaceIds: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case sucDeletedNum = "SucDeletedNum"
            case sucFaceIds = "SucFaceIds"
            case requestId = "RequestId"
        }
    }
    
    /// 删除人脸
    ///
    /// 删除一个人员下的人脸图片。如果该人员只有一张人脸图片，则返回错误。
    @inlinable
    public func deleteFace(_ input: DeleteFaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteFaceResponse > {
        self.client.execute(action: "DeleteFace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除人脸
    ///
    /// 删除一个人员下的人脸图片。如果该人员只有一张人脸图片，则返回错误。
    @inlinable
    public func deleteFace(_ input: DeleteFaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFaceResponse {
        try await self.client.execute(action: "DeleteFace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
