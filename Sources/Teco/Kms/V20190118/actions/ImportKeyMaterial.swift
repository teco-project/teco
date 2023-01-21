//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Kms {
    /// ImportKeyMaterial请求参数结构体
    public struct ImportKeyMaterialRequest: TCRequestModel {
        /// 使用GetParametersForImport 返回的PublicKey加密后的密钥材料base64编码。对于国密版本region的KMS，导入的密钥材料长度要求为 128 bit，FIPS版本region的KMS， 导入的密钥材料长度要求为 256 bit。
        public let encryptedKeyMaterial: String

        /// 通过调用GetParametersForImport获得的导入令牌。
        public let importToken: String

        /// 指定导入密钥材料的CMK，需要和GetParametersForImport 指定的CMK相同。
        public let keyId: String

        /// 密钥材料过期时间 unix 时间戳，不指定或者 0 表示密钥材料不会过期，若指定过期时间，需要大于当前时间点，最大支持 2147443200。
        public let validTo: UInt64?

        public init(encryptedKeyMaterial: String, importToken: String, keyId: String, validTo: UInt64? = nil) {
            self.encryptedKeyMaterial = encryptedKeyMaterial
            self.importToken = importToken
            self.keyId = keyId
            self.validTo = validTo
        }

        enum CodingKeys: String, CodingKey {
            case encryptedKeyMaterial = "EncryptedKeyMaterial"
            case importToken = "ImportToken"
            case keyId = "KeyId"
            case validTo = "ValidTo"
        }
    }

    /// ImportKeyMaterial返回参数结构体
    public struct ImportKeyMaterialResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 导入密钥材料
    ///
    /// 用于导入密钥材料。只有类型为EXTERNAL 的CMK 才可以导入，导入的密钥材料使用 GetParametersForImport 获取的密钥进行加密。可以为指定的 CMK 重新导入密钥材料，并重新指定过期时间，但必须导入相同的密钥材料。CMK 密钥材料导入后不可以更换密钥材料。导入的密钥材料过期或者被删除后，指定的CMK将无法使用，需要再次导入相同的密钥材料才能正常使用。CMK是独立的，同样的密钥材料可导入不同的 CMK 中，但使用其中一个 CMK 加密的数据无法使用另一个 CMK解密。
    /// 只有Enabled 和 PendingImport状态的CMK可以导入密钥材料。
    @inlinable @discardableResult
    public func importKeyMaterial(_ input: ImportKeyMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportKeyMaterialResponse> {
        self.client.execute(action: "ImportKeyMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入密钥材料
    ///
    /// 用于导入密钥材料。只有类型为EXTERNAL 的CMK 才可以导入，导入的密钥材料使用 GetParametersForImport 获取的密钥进行加密。可以为指定的 CMK 重新导入密钥材料，并重新指定过期时间，但必须导入相同的密钥材料。CMK 密钥材料导入后不可以更换密钥材料。导入的密钥材料过期或者被删除后，指定的CMK将无法使用，需要再次导入相同的密钥材料才能正常使用。CMK是独立的，同样的密钥材料可导入不同的 CMK 中，但使用其中一个 CMK 加密的数据无法使用另一个 CMK解密。
    /// 只有Enabled 和 PendingImport状态的CMK可以导入密钥材料。
    @inlinable @discardableResult
    public func importKeyMaterial(_ input: ImportKeyMaterialRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportKeyMaterialResponse {
        try await self.client.execute(action: "ImportKeyMaterial", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入密钥材料
    ///
    /// 用于导入密钥材料。只有类型为EXTERNAL 的CMK 才可以导入，导入的密钥材料使用 GetParametersForImport 获取的密钥进行加密。可以为指定的 CMK 重新导入密钥材料，并重新指定过期时间，但必须导入相同的密钥材料。CMK 密钥材料导入后不可以更换密钥材料。导入的密钥材料过期或者被删除后，指定的CMK将无法使用，需要再次导入相同的密钥材料才能正常使用。CMK是独立的，同样的密钥材料可导入不同的 CMK 中，但使用其中一个 CMK 加密的数据无法使用另一个 CMK解密。
    /// 只有Enabled 和 PendingImport状态的CMK可以导入密钥材料。
    @inlinable @discardableResult
    public func importKeyMaterial(encryptedKeyMaterial: String, importToken: String, keyId: String, validTo: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportKeyMaterialResponse> {
        self.importKeyMaterial(ImportKeyMaterialRequest(encryptedKeyMaterial: encryptedKeyMaterial, importToken: importToken, keyId: keyId, validTo: validTo), region: region, logger: logger, on: eventLoop)
    }

    /// 导入密钥材料
    ///
    /// 用于导入密钥材料。只有类型为EXTERNAL 的CMK 才可以导入，导入的密钥材料使用 GetParametersForImport 获取的密钥进行加密。可以为指定的 CMK 重新导入密钥材料，并重新指定过期时间，但必须导入相同的密钥材料。CMK 密钥材料导入后不可以更换密钥材料。导入的密钥材料过期或者被删除后，指定的CMK将无法使用，需要再次导入相同的密钥材料才能正常使用。CMK是独立的，同样的密钥材料可导入不同的 CMK 中，但使用其中一个 CMK 加密的数据无法使用另一个 CMK解密。
    /// 只有Enabled 和 PendingImport状态的CMK可以导入密钥材料。
    @inlinable @discardableResult
    public func importKeyMaterial(encryptedKeyMaterial: String, importToken: String, keyId: String, validTo: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportKeyMaterialResponse {
        try await self.importKeyMaterial(ImportKeyMaterialRequest(encryptedKeyMaterial: encryptedKeyMaterial, importToken: importToken, keyId: keyId, validTo: validTo), region: region, logger: logger, on: eventLoop)
    }
}
