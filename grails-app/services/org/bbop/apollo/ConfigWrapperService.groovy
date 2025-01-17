package org.bbop.apollo

import grails.transaction.Transactional
import org.bbop.apollo.sequence.Overlapper
import org.bbop.apollo.sequence.SequenceTranslationHandler
import org.bbop.apollo.sequence.TranslationTable

/**
 * TODO:  move all of this stuff to a database
 */
@Transactional
class ConfigWrapperService {

    def grailsApplication
    def servletContext

    String getWebRootDir() {
        if (servletContext != null) {
            return servletContext.getRealPath("/")
        } else {
            return "./"
        }
    }

    Boolean useCDS() {
        return grailsApplication.config.apollo.use_cds_for_new_transcripts
    }

    Boolean getCountAnnotations() {
        return grailsApplication.config.apollo.count_annotations
    }

    Boolean getAddMergedComment() {
        return grailsApplication.config.apollo.add_merged_comment
    }

    String getTranscriptOverlapper() {
        return grailsApplication.config.apollo.transcript_overlapper
    }

    String getFaToTwobitExe() {
        return grailsApplication.config.apollo.fa_to_twobit_exe
    }

    String getMakeBlastDbExe() {
        return grailsApplication.config.apollo.make_blast_db_exe
    }

    TranslationTable getTranslationTable() {
        return SequenceTranslationHandler.getTranslationTableForGeneticCode(getTranslationCode(), getWebRootDir())
    }

    String getTranslationCode() {
        return grailsApplication.config.apollo.get_translation_code.toString()
    }

    Boolean hasDbxrefs() {
        return grailsApplication.config.apollo.feature_has_dbxrefs
    }

    Boolean hasAttributes() {
        return grailsApplication.config.apollo.feature_has_attributes
    }

    Boolean hasPubmedIds() {
        return grailsApplication.config.apollo.feature_has_pubmed_ids
    }

    Boolean hasGoIds() {
        return grailsApplication.config.apollo.feature_has_go_ids
    }

    Boolean hasComments() {
        return grailsApplication.config.apollo.feature_has_comments
    }

    Boolean hasStatus() {
        return grailsApplication.config.apollo.feature_has_status
    }

    List<String> getSpliceDonorSites() {
        List<String> sites = new ArrayList<String>()
        grailsApplication.config.apollo.splice_donor_sites.each {
            sites.add(it.toLowerCase())
        }
        return sites
    }

    List<String> getSpliceAcceptorSites() {
        List<String> sites = new ArrayList<String>()
        grailsApplication.config.apollo.splice_acceptor_sites.each {
            sites.add(it.toLowerCase())
        }
        return sites
    }

    int getDefaultMinimumIntronSize() {
        return grailsApplication.config.apollo.default_minimum_intron_size
    }

    def getSequenceSearchTools() {
        return grailsApplication.config.apollo.sequence_search_tools
    }

    def getDataAdapterTools() {
        return grailsApplication.config.apollo.data_adapters
    }

    def exportSubFeatureAttrs() {
        return grailsApplication.config.apollo.export_subfeature_attrs
    }

    String getCommonDataDirectory() {
        return grailsApplication.config.apollo.common_data_directory
    }

    def hasChadoDataSource() {
        if (grailsApplication.config.dataSource_chado) {
            return true
        }
        return false
    }

    def isPostgresChadoDataSource() {
        if (hasChadoDataSource()) {
            if (grailsApplication.config.dataSource_chado.url.contains('jdbc:postgresql')) {
                return true
            }
        }
        return false
    }

    def getChadoExportFastaForSequence() {
        return grailsApplication.config.apollo.chado_export_fasta_for_sequence
    }

    def getChadoExportFastaForCds() {
        return grailsApplication.config.apollo.chado_export_fasta_for_cds
    }

    def getAuthentications() {
        grailsApplication.config.apollo.authentications
    }

    def storeOrigId() {
        grailsApplication.config.apollo.store_orig_id
    }

    def getExtraTabs() {
        return grailsApplication.config.apollo.extraTabs
    }

    boolean getOnlyOwnersDelete() {
        return grailsApplication.config.apollo.only_owners_delete
    }

    boolean getNativeTrackSelectorDefaultOn() {
        return grailsApplication.config.apollo.native_track_selector_default_on
    }

    String getGff3Source() {
        return grailsApplication.config.gff3.source
    }


    boolean getCalculateNonCanonicalSpliceSites() {
        return grailsApplication.config.apollo.calculate_non_canonical_splice_sites
    }

}
