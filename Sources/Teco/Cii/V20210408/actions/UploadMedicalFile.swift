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

extension Cii {
    /// 上传医疗影像文件
    ///
    /// 上传医疗影像文件，可以用来做结构化。
    @inlinable
    public func uploadMedicalFile(_ input: UploadMedicalFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UploadMedicalFileResponse > {
        self.client.execute(action: "UploadMedicalFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 上传医疗影像文件
    ///
    /// 上传医疗影像文件，可以用来做结构化。
    @inlinable
    public func uploadMedicalFile(_ input: UploadMedicalFileRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadMedicalFileResponse {
        try await self.client.execute(action: "UploadMedicalFile", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UploadMedicalFile请求参数结构体
    public struct UploadMedicalFileRequest: TCRequestModel {
        /// 文件的URL地址。File与FileURL不能同时为空，若File参数也存在，会只取File的内容。
        public let fileURL: String?
        
        public init (fileURL: String?) {
            self.fileURL = fileURL
        }
        
        enum CodingKeys: String, CodingKey {
            case fileURL = "FileURL"
        }
    }
    
    /// UploadMedicalFile返回参数结构体
    public struct UploadMedicalFileResponse: TCResponseModel {
        /// 文件存储的key，可以用来创建结构化任务。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileKey: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case fileKey = "FileKey"
            case requestId = "RequestId"
        }
    }
}
